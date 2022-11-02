package com.project.restaurant.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	

	/**
	 * 로그인 페이지
	 * @return
	 */
	@RequestMapping(value = "/loginView")
	public ModelAndView userLoginView(HttpSession session) {
		
		ModelAndView mav = new ModelAndView("/user/loginView");
		
		/* 네아로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl =  naverLoginBO.getAuthorizationUrl(session);
		/* 인증요청문 확인 */
		System.out.println("네이버:" + naverAuthUrl);
		/* 객체 바인딩 */
		mav.addObject("naverAuthUrl", naverAuthUrl);
//		model.addAttribute("urlNaver", naverAuthUrl);
		
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
