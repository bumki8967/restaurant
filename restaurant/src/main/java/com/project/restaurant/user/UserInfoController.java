package com.project.restaurant.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.util.WebHelper;


@Controller
public class UserInfoController {

	@Autowired
	private UserInfoServiceImpl userInfoServiceImpl;
	
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
	 * 회원가입 메소드
	 * 회원가입 전 아이디 및 이메일 중복검사 실행
	 * @param userInfo
	 * @return
	 */
	@RequestMapping(value = "/user/userRegist.do")
	public String userRegist(UserInfo userInfo) {

		// 회원가입
		userInfoServiceImpl.insertUser(userInfo);
		
		return "redirect:/";
	}
}
