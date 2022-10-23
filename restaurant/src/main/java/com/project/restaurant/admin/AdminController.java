package com.project.restaurant.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

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
	
	/**
	 * 관리자 메인 페이지
	 * @return
	 */
	@RequestMapping("/admin/index")
	public ModelAndView adminIndex() {
		
		ModelAndView mav = new ModelAndView("/admin/index");

		List<User> list = userServiceImpl.selectUserAll();
		
		mav.addObject("list", list);
		
		System.out.println("Admin index");
		
		
		return mav;
	}
}
