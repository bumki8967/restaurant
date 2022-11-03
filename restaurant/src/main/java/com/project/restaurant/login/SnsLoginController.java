package com.project.restaurant.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
@RequestMapping("/login")
public class SnsLoginController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	
	
	/**
	 * SNS로그인 (카카오)
	 * @param user
	 * @param user_id
	 * @param user_pw
	 * @param name
	 * @param birthday
	 * @param gender
	 * @param request
	 * @return
	 */
	@RequestMapping("/kakao")
	public String kakaoLogin(User user, HttpServletRequest request, @RequestParam(value = "user_id") String user_id, 
							 @RequestParam(value = "user_pw") String user_pw, @RequestParam(value = "name") String name, 
							 @RequestParam(value = "birthday") String birthday, @RequestParam(value = "gender") String gender,
							 @RequestParam(value = "login_type") String login_type) {

		HttpSession session = request.getSession();
		int result = userServiceImpl.duplicationUser(user_id, login_type);
		
		if (result <= 0) {
			user.setUser_id(user_id);
			user.setName(name);
			user.setBirthday(birthday);
			user.setGender(gender);
			user.setUser_type("normal");
			user.setLogin_type(login_type);
			
			userServiceImpl.insertUser(user);
		} 
			
		session.setAttribute("user_id", user_id);
		session.setAttribute("name", name);
		session.setAttribute("user_type", user.getUser_type());
		session.setAttribute("login_type", user.getLogin_type());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		return "redirect:/";
	}
	
	
	
	/**
	 * SNS로그인 (네이버)
	 * @param user
	 * @param model
	 * @param request
	 * @param code
	 * @param state
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/naver")
	public String callbackNaver(User user, Model model, HttpServletRequest request, @RequestParam String code, @RequestParam String state) throws Exception {
		
		System.out.println("NaverLogin		Start!!!!!!");
		
		HttpSession session = request.getSession();
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		JSONParser jsonParser = new JSONParser();
        
        //로그인 사용자 정보를 읽어온다.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
        // apiResult값을 JSON형태로 변환
	    JSONObject jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("response");	
		
		System.out.println("jsonObj	::	" + jsonObj);
		System.out.println("response_obj	::	" + response_obj);
		
		// response의 데이터 파싱
		String name = (String) response_obj.get("name");
		String email = (String) response_obj.get("email");
		String age = (String) response_obj.get("age");
		String mobile = (String) response_obj.get("mobile");
		String gender = (String) response_obj.get("gender");
		Integer birthyear = Integer.valueOf((String)response_obj.get("birthyear")) ;
		String birthday = (String) response_obj.get("birthday");

		int result = userServiceImpl.duplicationUser(email, "naver");
		System.out.println("naverLogin	result	::	" + result);
		
		if (result <= 0) {
			user.setUser_id(email);
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
			user.setUser_type("normal");
			user.setLogin_type("naver");
			
			userServiceImpl.insertUser(user);
		}
		
		session.setAttribute("user_id", email);
		session.setAttribute("name", name);
		session.setAttribute("user_type", user.getUser_type());
		session.setAttribute("login_type", user.getLogin_type());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		System.out.println("NaverLogin		End!!!!!!");
		
		return "redirect:/";
        
	}
	
	
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
	 */
//	@RequestMapping("/naver")
//	public String naverLogin(User user, HttpServletRequest request, @RequestParam(value = "user_id") String user_id, 
//							 @RequestParam(value = "user_pw") String user_pw, @RequestParam(value = "name") String name,
//							 @ReqestParam(value = "birthyear") String birthYear, @RequestParam(value = "birthday") String birthday,
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
	
	
	
}
