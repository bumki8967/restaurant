package com.project.restaurant.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	/**
	 * 관리자 로그인 화면
	 * @return
	 */
	@RequestMapping("/login")
	public ModelAndView admin() {
		
		System.out.println("Admin login");
		ModelAndView mav = new ModelAndView("/admin/login");
		
		return mav;
	}
	
	/**
	 * 관리자 메인 페이지 & 회원관리
	 * @return
	 */
	@RequestMapping("/index")
//	@ResponseBody
	public ModelAndView adminIndex() {
		
		ModelAndView mav = new ModelAndView("/admin/index");

		List<User> userList = userServiceImpl.selectUserAll();
		
		mav.addObject("userList", userList);
		
		System.out.println("Admin index");
		
		
		return mav;
	}
	
	@RequestMapping("/userDelete.do")
	public String userDelete(@RequestParam(value = "user_seq") int user_seq) {
		
		System.out.println("AdminController		userDelete	Start!!!!!");
		
		userServiceImpl.deleteUser(user_seq);
		
		System.out.println("AdminController		userDelete	End!!!!!");
		
		return "redirect:/admin/index";
	}
	
}
