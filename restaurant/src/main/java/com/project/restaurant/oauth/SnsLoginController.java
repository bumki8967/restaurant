package com.project.restaurant.oauth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.restaurant.user.User;
import com.project.restaurant.user.UserServiceImpl;

@Controller
@RequestMapping("/oauth")
public class SnsLoginController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;

	
	
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
		
		System.out.println("kakao	::	" + result);
		
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
	@RequestMapping("/naver")
	public String naverLogin(User user, HttpServletRequest request, @RequestParam(value = "user_id") String user_id, 
							 @RequestParam(value = "name") String name, @RequestParam(value = "birthyear") String birthYear, 
							 @RequestParam(value = "birthday") String birthday, @RequestParam(value = "gender") String gender, 
							 @RequestParam(value = "tel") String tel, @RequestParam(value = "login_type") String login_type) {
		
		System.out.println("Naver Login Start!!!!!");
		
		HttpSession session = request.getSession();
		int result = userServiceImpl.duplicationUser(user_id, login_type);
		
		System.out.println("result	::	" + result);
		System.out.println("user	::	" + user);
		System.out.println("user_id	::	" + user_id);
		System.out.println("name	::	" + name);
		System.out.println("birthYear	::	" + birthYear);
		System.out.println("birthday	::	" + birthday);
		System.out.println("gender	::	" + gender);
		System.out.println("tel	::	" + tel);
		
		if (result <= 0) {
			user.setUser_id(user_id);
			user.setName(name);
			user.setBirthday(birthYear + "-" + birthday);
			
			if ("M".equals(gender)) {
				user.setGender("male");
			} else {
				user.setGender("female");
			}
			
			user.setTel(tel);
			user.setUser_type("normal");
			user.setLogin_type(login_type);
			
			userServiceImpl.insertUser(user);
		}
		
		session.setAttribute("user_id", user_id);
		session.setAttribute("name", name);
		session.setAttribute("user_type", user.getUser_type());
		session.setAttribute("login_type", user.getLogin_type());
		session.setMaxInactiveInterval(60 * 10 * 1);
		
		System.out.println("Naver Login End!!!!!");
		
		return "redirect:/";
	}
}
