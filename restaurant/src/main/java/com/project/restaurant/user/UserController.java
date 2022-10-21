package com.project.restaurant.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String userRegist(User userInfo) {

		// 회원가입
		userServiceImpl.insertUser(userInfo);
		
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
		
		System.out.println("dulicateUserId	Start!!!!");
		
		int result = userServiceImpl.duplicationUserId(user_id);
		
		System.out.println(result);
		
		System.out.println("dulicateUserId	End!!!!");
		
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
		
		System.out.println("duplicationEmail	Start!!!!!");
		
		int result = userServiceImpl.duplicationEmail(email);
		
		System.out.println(result);
		
		System.out.println("duplicationEmail	End!!!!!");
		
		return result;
	}
}
