package com.project.restaurant.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	/**
	 * 관리자 로그인 화면
	 * @return
	 */
	@RequestMapping("/admin/login")
	public ModelAndView admin() {
		
		System.out.println("Admin login");
		ModelAndView mav = new ModelAndView("/admin/login");
		
		return mav;
	}
	
	@RequestMapping("/admin/index")
	public ModelAndView adminIndex() {
		
		System.out.println("Admin index");
		ModelAndView mav = new ModelAndView("/admin/index");
		
		return mav;
	}
}
