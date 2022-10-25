package com.project.restaurant.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.util.WebHelper;


@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private WebHelper web;
	
	/**
	 * 회원가입 페이지
	 * @return
	 */
	@RequestMapping(value = "/userRegistView")
	public ModelAndView userRegistView() {
		
		System.out.println("LoginController UserRegistView");
		ModelAndView mav = new ModelAndView("/user/registView");
		
		return mav;
	}
	
	
	/**
	 * 비밀번호 찾기 페이지
	 * @return
	 */
	@RequestMapping(value = "/userFindPwView")
	public ModelAndView userFindPwView() {
		
		System.out.println("LoginController userFindPwView");
		ModelAndView mav = new ModelAndView("/user/findPwView");
		
		return mav;
	}
	
	
	/**
	 * 회원가입 메소드
	 * 회원가입 전 아이디 및 이메일 중복검사 실행
	 * @param userInfo
	 * @return
	 */
	@RequestMapping(value = "/userRegist.do")
	public String userRegist(User user) {

		// 회원가입
		userServiceImpl.insertUser(user);
		
		return "redirect:/";
	}
	
	
	/**
	 * 회원가입 시 중복 아이디 체크 Ajax
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/duplicationUserId")
	@ResponseBody
	public int duplicateUserId(String user_id) {
		
		int result = userServiceImpl.duplicationUserId(user_id);
		
		System.out.println(result);
		
		return result;
	}
	
	
	
	/**
	 * 회원가입 시 중복 이메일 체크 Ajax
	 * @param email
	 * @return
	 */
	@RequestMapping(value = "/duplicationEmail")
	@ResponseBody
	public int duplicationEmail(String email) {
		
		int result = userServiceImpl.duplicationEmail(email);
		
		return result;
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
	public User userLogin(HttpServletRequest request, @RequestParam(value = "user_id") String user_id, 
						  @RequestParam(value = "user_pw") String user_pw, @RequestParam(value = "keep") String keep) {
		
		User user = userServiceImpl.loginUserInfo(user_id, user_pw);
		
		HttpSession session = request.getSession();
		System.out.println("LoginController		::	" + keep);
		
		if (user != null && keep.equals("N")) {
			session.setAttribute("user_id", user.getUser_id());
			session.setAttribute("type", user.getType());
		} else if (user != null && keep.equals("Y")) {
			session.setAttribute("user_id", user.getUser_id());
			session.setAttribute("type", user.getType());
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
		session.removeAttribute("user_id");
		session.removeAttribute("type");
		session.invalidate();
		
		return "redirect:/";
	}
	
}
