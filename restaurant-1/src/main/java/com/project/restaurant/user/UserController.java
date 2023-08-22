package com.project.restaurant.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.restaurant.login.GoogleLoginBO;
import com.project.restaurant.login.KakaoLoginBO;
import com.project.restaurant.login.NaverLoginBO;
import com.project.restaurant.util.WebHelper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/user")
public class UserController {

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	/* kakaoLoginBO */
	private KakaoLoginBO kakaoLoginBO;
	
	/* GoogleLoginBO */
	private GoogleLoginBO googleLoginBO;
	
	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private WebHelper web;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@Autowired
	private void setKakaoLoginBO(KakaoLoginBO kakaoLoginBO) {
		this.kakaoLoginBO = kakaoLoginBO;
	}
	
	@Autowired
	private void setGoogleLoginBO(GoogleLoginBO googleLoginBO) {
		this.googleLoginBO = googleLoginBO;
	}
	
	/**
	 * 회원가입 페이지
	 * @return
	 */
	@RequestMapping(value = "/userRegistView")
	public String userRegistView(Model model) {
		return "/user/registView";
	}
	
	
	/**
	 * 비밀번호 찾기 페이지
	 * @return
	 */
	@RequestMapping(value = "/userFindPwView")
	public String userFindPwView(Model model) {
		return "/user/findPwView";
	}
	
	/**
	 * 회원가입 메소드
	 * 회원가입 전 아이디 및 이메일 중복검사 실행
	 * @param userInfo
	 * @return
	 */
	@RequestMapping(value = "/userRegist.do")
	public String userRegist(Model model, User user) {

		// 회원가입
		userService.insertUser(user);
		
		return "redirect:/";
	}
	
	
	/**
	 * 회원가입 시 중복 아이디 체크 Ajax
	 * @param userId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/duplicationUserId")
	public int duplicateUserId(Model model, String userId) {
		
		int result = userService.duplicationUserId(userId);
		
		return result;
	}
	
	
	
	/**
	 * 회원가입 시 중복 이메일 체크 Ajax
	 * @param email
	 * @return
	 
	@RequestMapping(value = "/duplicationEmail")
	@ResponseBody
	public int duplicationEmail(String email) {
		
		int result = userServiceImpl.duplicationEmail(email);
		
		return result;
	}
	*/
	
	
	/**
	 * 로그인 페이지
	 * @return
	 */
	@RequestMapping(value = "/loginView")
	public String userLoginView(Model model, HttpSession session) {
		
		/* 네이버 로그인 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl =  naverLoginBO.getAuthorizationUrl(session);
		/* 카카오 로그인 인증 URL을 생성하기 위하여 kakaoLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String kakaoAuthUrl =  kakaoLoginBO.getAuthorizationUrl(session);
		/* 구글 로그인 인증 URL을 생성하기 위하여 kakaoLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String googleAuthUrl = googleLoginBO.getAuthorizationUrl(session);
//		String googleAuthUrl = googleLoginBO.getAuthorizationUrl();
		
//		String googleAuthUrl = googleLoginUrl();
				
		
		/* 객체 바인딩 */
		model.addAttribute("naverAuthUrl", naverAuthUrl);
		model.addAttribute("kakaoAuthUrl", kakaoAuthUrl);
		model.addAttribute("googleAuthUrl", googleAuthUrl);
		
		/**
		model.addAttribute("requestUrl", requestUrl);
		model.addAttribute("grantType", grantType);
		model.addAttribute("clientId", clientId);
		model.addAttribute("redirectUrl", redirectUrl);
		*/
		return "/user/loginView";
	}
	
	
	/**
	 * (사용자) 로그인
	 * @param request
	 * @param user_id - 아이디
	 * @param user_pw - 비밀번호
	 * @return - 메인 페이지
	 */
	@RequestMapping(value = "/login.do")
	@ResponseBody
	public User userLogin(Model model, HttpServletRequest request, 
						  @RequestParam(value = "userId") String userId, 
						  @RequestParam(value = "userPw") String userPw, 
						  @RequestParam(value = "keep", required = false) String keep) {
		
		User user = userService.loginUserInfo(userId, userPw);
		HttpSession session = request.getSession();
		
		if (user != null && keep.equals("N")) {
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("name", user.getName());
			session.setAttribute("userType", user.getUserType());
			session.setAttribute("loginType", user.getLoginType());
		} else if (user != null && keep.equals("Y")) {
			session.setAttribute("userId", user.getUserId());
			session.setAttribute("name", user.getName());
			session.setAttribute("userType", user.getUserType());
			session.setAttribute("loginType", user.getLoginType());
			session.setMaxInactiveInterval(60 * 10 * 1);
		}
		
		return user;
	}
	
	
	
	/**
	 * (사용자) 로그아웃
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/logout.do")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		session.removeAttribute("userId");
		session.removeAttribute("userType");
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	

}
