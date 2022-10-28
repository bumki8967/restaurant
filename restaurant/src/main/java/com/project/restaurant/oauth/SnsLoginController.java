package com.project.restaurant.oauth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
@RequestMapping("/oauth")
public class SnsLoginController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	@RequestMapping("/kakao")
	public String kakaoLogin(User user, @RequestParam(value = "user_id") String user_id, @RequestParam(value = "user_pw") String user_pw ,
							 @RequestParam(value = "name") String name, @RequestParam(value = "birthday") String birthday, 
							 @RequestParam(value = "gender") String gender, HttpServletRequest request) {

		HttpSession session = request.getSession();
		int result = userServiceImpl.duplicationUserId(user_id);
		
		if (result <= 0) {
			user.setUser_id(user_id);
			user.setName(name);
			user.setBirthday(birthday);
			user.setGender(gender);
			user.setUser_type("normal");
			user.setLogin_type("kakao");
			
			userServiceImpl.insertUser(user);
		} 
			
		session.setAttribute("user_id", user_id);
		session.setAttribute("name", name);
		session.setAttribute("user_type", user.getUser_type());
		session.setAttribute("login_type", user.getLogin_type());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		return "redirect:/";
	}
}
