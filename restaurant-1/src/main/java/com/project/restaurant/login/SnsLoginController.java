package com.project.restaurant.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.project.restaurant.user.GoogleResponse;
import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;
import com.project.restaurant.util.Decrypt;
import com.project.restaurant.util.WebHelper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/snsLogin")
public class SnsLoginController {
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private WebHelper web;
	
	@Autowired
	private Decrypt decrypt;
	
	@Value("${google.auth.requestUrl}")
	private String requestUrl;
	
	@Value("${google.auth.redirectUrl}")
	private String redirectUrl;
	
	@Value("${google.auth.clientId}")
	private String clientId;
	
	@Value("${google.auth.clientSecret}")
	private String clientSecret;
	
	@Value("${google.auth.grantType}")
	private String grantType;
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	/* KakaoLoginBO*/
	private KakaoLoginBO kakaoLoginBO;
	
	/* GoogleLoginBO */
//	private GoogleLoginBO googleLoginBO;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@Autowired
	private void setKakaoLoginBO(KakaoLoginBO kakaoLoginBO) {
		this.kakaoLoginBO = kakaoLoginBO;
	}
	
//	@Autowired
//	private void setGoogleLoginBO(GoogleLoginBO googleLoginBO) {
//		this.googleLoginBO = googleLoginBO;
//	}
	
	
	
	/**
	 * SNS로그인 (카카오)
	 * @param 	user - 사용자
	 * @return	index
	 * @throws IOException 
	 * @throws Exception 
	 */
	/**
	public String kakaLogin(User user, Model model, @RequestParam String code, @RequestParam String state) throws Exception {
		
		HttpSession session = request.getSession();
		OAuth2AccessToken oauthToken = kakaoLoginBO.getAccessToken(session, code, state);
		
		//로그인 사용자 정보를 읽어온다.
		String kakaoApiResult = kakaoLoginBO.getUserProfile(oauthToken);
		
		// kakaoApiResult값을 JSON형태로 변환
	    JSONParser jsonParser = new JSONParser();
	    JSONObject jsonObj = (JSONObject) jsonParser.parse(kakaoApiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");	
		JSONObject profile = (JSONObject) response_obj.get("profile");
		
		// response의 데이터 파싱
		String name = (String) profile.get("nickname");
		String email = (String) response_obj.get("email");
		String age = (String) response_obj.get("age");
		String mobile = (String) response_obj.get("phone_number");
		String gender = (String) response_obj.get("gender");
		String birthDay = (String) response_obj.get("birthday");
		
		// 이미 가입되어 있는지 중복검사
		int result = userService.duplicationUser(email, "kakao");
		
		return null;
	}
	*/
	
	/**
	 * SNS로그인 (카카오)
	 * 23.07.31 주석 처리
	 * @param 	user - 사용자
	 * @return	index
	 * @throws IOException 
	 * @throws Exception 
	 */
	
	@ResponseBody
	@RequestMapping(value= "/kakao")
	public ModelAndView kakaoLogin(User user, Model model, HttpServletRequest request, @RequestParam String code, @RequestParam String state) 
			throws Exception {
		
		ModelAndView mav = new ModelAndView("/index");
		
		web.init();
		HttpSession session = request.getSession();
		OAuth2AccessToken oauthToken = kakaoLoginBO.getAccessToken(session, code, state);
		
		//로그인 사용자 정보를 읽어온다.
		String apiResult = kakaoLoginBO.getUserProfile(oauthToken);
	    
        // apiResult값을 JSON형태로 변환
	    JSONParser jsonParser = new JSONParser();
	    JSONObject jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");	
		JSONObject profile = (JSONObject) response_obj.get("profile");
		
		// response의 데이터 파싱
		String name = (String) profile.get("nickname");
		String email = (String) response_obj.get("email");
		String age = (String) response_obj.get("age");
		String mobile = (String) response_obj.get("phone_number");
		String gender = (String) response_obj.get("gender");
		String birthDay = (String) response_obj.get("birthday");
		
		// 이미 가입되어 있는지 중복검사
		// 미가입 시 INSERT , 가입되어 있을 시 로그인
		int result = userService.duplicationUser(email, "kakao");
		
		if (result <= 0) {
			user.setUserId(email);
			user.setName(name);
			user.setTel(mobile);
			
			if ("male".equals(gender)) {
				user.setGender("male");
			} else if ("female".equals(gender)) {
				user.setGender("female");
			} else {
				user.setGender("none");
			}
			
			user.setBirthday(birthDay);
			user.setUserType("normal");
			user.setLoginType("kakao");
			
			userService.insertUser(user);
		}
		
		session.setAttribute("userId", email);
		session.setAttribute("name", name);
		session.setAttribute("userType", user.getUserType());
		session.setAttribute("loginType", user.getLoginType());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		return mav;
		
	}
	/** */
	
	/**
	 * SNS로그인 (네이버)
	 * 23.07.31 주석처리
	 * @param user
	 * @param model
	 * @param request
	 * @param code
	 * @param state
	 * @return
	 * @throws Exception
	 */
	
	@ResponseBody
	@RequestMapping("/naver")
	public ModelAndView naverLogin(User user, Model model, HttpServletRequest request, @RequestParam String code, @RequestParam String state) 
			throws Exception {
		
		ModelAndView mav = new ModelAndView("/index");
		
		HttpSession session = request.getSession();
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
        //로그인 사용자 정보를 읽어온다.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
		
        // apiResult값을 JSON형태로 변환
	    JSONParser jsonParser = new JSONParser();
	    JSONObject jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("response");	
		
		// response의 데이터 파싱
		String name = (String) response_obj.get("name");
		String email = (String) response_obj.get("email");
		String age = (String) response_obj.get("age");
		String mobile = (String) response_obj.get("mobile");
		String gender = (String) response_obj.get("gender");
		String birthyear = (String)response_obj.get("birthyear");
		String birthday = (String) response_obj.get("birthday");

		// 네이버로 회원가입 시 중복회원 검사 
		// 미가입 시 INSERT , 가입되어 있을 시 로그인
		int result = userService.duplicationUser(email, "naver");
		
		if (result <= 0) {
			user.setUserId(email);
			user.setName(name);
			user.setTel(mobile);
			
			if ("M".equals(gender)) {
				user.setGender("male");
			} else if ("W".equals(gender)) {
				user.setGender("female");
			} else {
				user.setGender("none");
			}
			
			user.setBirthday(birthyear + "-" + birthday);
			user.setUserType("normal");
			user.setLoginType("naver");
			
			userService.insertUser(user);
		}
		
		session.setAttribute("userId", email);
		session.setAttribute("name", name);
		session.setAttribute("userType", user.getUserType());
		session.setAttribute("loginType", user.getLoginType());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		return mav;
        
	}
	/** */
	
	/**
	 * 스크립트 사용 시
	 * SNS로그인 (네이버)
	 * @param user
	 * @param request
	 * @param state
	 * @param user_id
	 * @param name
	 * @param birthYear
	 * @param birthday
	 * @param gender
	 * @param tel
	 * @return
	 * @throws IOException 
	 * @throws ParseException 
	 */
//	@RequestMapping("/naver")
//	public String naverLogin(User user, HttpServletRequest request, @RequestParam(value = "user_id") String user_id, 
//							 @RequestParam(value = "user_pw") String user_pw, @RequestParam(value = "name") String name,
//							 @RequestParam(value = "birthyear") String birthYear, @RequestParam(value = "birthday") String birthday,
//							 @RequestParam(value = "gender") String gender, @RequestParam(value = "tel") String tel,
//							 @RequestParam(value = "login_type") String login_type) {
//		
//		System.out.println("Naver Login Start!!!!!");
//		
//		HttpSession session = request.getSession();
//		int result = userServiceImpl.duplicationUser(user_id, login_type);
//		
//		System.out.println("result	::	" + result);
//		System.out.println("user	::	" + user);
//		System.out.println("user_id	::	" + user_id);
//		System.out.println("name	::	" + name);
//		System.out.println("birthYear	::	" + birthYear);
//		System.out.println("birthday	::	" + birthday);
//		System.out.println("gender	::	" + gender);
//		System.out.println("tel	::	" + tel);
//		
//		if (result <= 0) {
//			user.setUser_id(user_id);
//			user.setName(name);
//			user.setBirthday(birthYear + "-" + birthday);
//			
//			if ("M".equals(gender)) {
//				user.setGender("male");
//			} else {
//				user.setGender("female");
//			}
//			
//			user.setTel(tel);
//			user.setUser_type("normal");
//			user.setLogin_type(login_type);
//			
//			userServiceImpl.insertUser(user);
//		}
//		
//		session.setAttribute("user_id", user_id);
//		session.setAttribute("name", name);
//		session.setAttribute("user_type", user.getUser_type());
//		session.setAttribute("login_type", user.getLogin_type());
//		session.setMaxInactiveInterval(60 * 10 * 1);
//		
//		System.out.println("Naver Login End!!!!!");
//		
//		return "redirect:/";
//	}
	
	
//	@RequestMapping("/google")
	@GetMapping("/google")
	@ResponseBody
//	public ModelAndView googleLogin(User user, Model model, @RequestParam String code, @RequestParam String state) throws Exception {
	public ResponseEntity<GoogleResponse> googleLogin(User user, Model model, HttpServletRequest request, @RequestParam String code, @RequestParam String state) throws Exception {
		
		HttpSession session = request.getSession();
		RestTemplate restTemplate = new RestTemplate();
		Map<String, String> params = new HashMap<>();
		
		params.put("code", code);
		params.put("client_id", clientId);
		params.put("client_secret", clientSecret);
		params.put("redirect_uri", redirectUrl);
		params.put("grant_type", grantType);
		
		ResponseEntity<GoogleResponse> responseEntity = restTemplate.postForEntity(requestUrl, params, GoogleResponse.class);
		
		if (responseEntity.getStatusCode() == HttpStatus.OK) {
			String decodeInfo = decrypt.decryptBase64UrlToken(responseEntity.getBody().getId_token().split("\\.")[1]);
			
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(decodeInfo);
			JSONObject response_obj = (JSONObject) jsonObj.get("response");
			
			String name = (String) jsonObj.get("name");
			String email = (String) jsonObj.get("email");

			return responseEntity;
		}
		
		return null;
	}
}
		
//		ModelAndView mav = new ModelAndView("/index");
//
//		HttpSession session = request.getSession();
//		OAuth2AccessToken oauthToken = googleLoginBO.getAccessToken(session, code, state);
////		ResponseEntity<String> idToken = googleLoginBO.getAccessToken(session, code, state);
//		
//        //로그인 사용자 정보를 읽어온다.
//		String apiResult = googleLoginBO.getUserProfile(oauthToken);
//		
//		System.out.println("apiResult		::	" + apiResult);
//		
////		return null;
//		
//        // apiResult값을 JSON형태로 변환
//	    JSONParser jsonParser = new JSONParser();
//	    System.out.println("aaaaaaaaaaaaaaaaaaaaaa");
//	    JSONObject jsonObj = (JSONObject) jsonParser.parse(apiResult);
//	    System.out.println("bbbbbbbbbbbbbbbbbbbbbb");
//		JSONObject response_obj = (JSONObject) jsonObj.get("response");
//		System.out.println("cccccccccccccccccccccc");
//		
//		// response의 데이터 파싱
//		String name = (String) response_obj.get("name");
//		String email = (String) response_obj.get("email");
//		String age = (String) response_obj.get("age");
//		String mobile = (String) response_obj.get("mobile");
//		String gender = (String) response_obj.get("gender");
//		String birthyear = (String)response_obj.get("birthyear");
//		String birthday = (String) response_obj.get("birthday");
//
//		// 네이버로 회원가입 시 중복회원 검사 
//		// 미가입 시 INSERT , 가입되어 있을 시 로그인
//		int result = userService.duplicationUser(email, "naver");
//		
//		if (result <= 0) {
//			user.setUserId(email);
//			user.setName(name);
//			user.setTel(mobile);
//			
//			if ("M".equals(gender)) {
//				user.setGender("male");
//			} else if ("W".equals(gender)) {
//				user.setGender("female");
//			} else {
//				user.setGender("none");
//			}
//			
//			user.setBirthday(birthyear + "-" + birthday);
//			user.setUserType("normal");
//			user.setLoginType("naver");
//			
//			userService.insertUser(user);
//		}
//		
//		session.setAttribute("userId", email);
//		session.setAttribute("name", name);
//		session.setAttribute("userType", user.getUserType());
//		session.setAttribute("loginType", user.getLoginType());
//		session.setMaxInactiveInterval(60 * 10 * 1);
//		
//		return mav;
//	}
//	
//}
