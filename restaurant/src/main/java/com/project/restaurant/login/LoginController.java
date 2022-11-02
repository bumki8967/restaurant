package com.project.restaurant.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	/**
	 * 로그인 페이지
	 * @return
	 */
	@RequestMapping(value = "/loginView")
	public ModelAndView userLoginView() {
		
		ModelAndView mav = new ModelAndView("/user/loginView");
		
		return mav;
	}
	

	
	
	/**
	 * 비밀번호 찾기 페이지
	 * @return
	 */
	@RequestMapping(value = "/findPwView")
	public ModelAndView userFindPwView() {
		
		ModelAndView mav = new ModelAndView("/user/findPwView");
		
		return mav;
	}
	
	
	@RequestMapping("/callback")
	public ModelAndView naverCallback() {
		
		ModelAndView mav = new ModelAndView("/user/naver_callback");
		
		return mav;
	}
}
