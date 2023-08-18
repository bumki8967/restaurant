//package com.project.restaurant.user;
//
//import java.io.IOException;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
//import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
//import org.springframework.stereotype.Component;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//@Component
//public class SnsLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler  {
//
//	@Autowired
//	UserServiceImpl userService;
//	
//	@Autowired
//	SnsUserServiceImpl snsUserService; 
//	
//	@Override
//	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
//		
//		OAuth2AuthenticationToken token = (OAuth2AuthenticationToken) authentication;
//		
//		String userId = null;
//		String loginType = token.getAuthorizedClientRegistrationId();
//		HttpSession session = request.getSession();
//		
//		if ("kakao".equals(loginType.toLowerCase())) {
//			userId = ((Map<String, Object>) token.getPrincipal().getAttribute("kakao_account")).get("email").toString();
//		} else if ("naver".equals(loginType.toLowerCase())) {
//			userId = ((Map<String, Object>) token.getPrincipal().getAttribute("response")).get("email").toString();
//		} else if ("google".equals(loginType.toLowerCase())) {
//			userId = token.getPrincipal().getAttribute("email").toString();
//		}
//		
//		int result = userService.duplicationUser(userId, loginType);
//		
//		if (result < 0) {
//			User user = new User();
//			user.setUserId(userId);
//			user.setLoginType(loginType);
//			
//			userService.insertUser(user);
//			session.setAttribute("user", user);
//		}
//		
//		super.onAuthenticationSuccess(request, response, authentication);
//	}
//}
