//package com.project.restaurant.user;
//
//import java.io.IOException;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
//import org.springframework.stereotype.Component;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//@Component
//public class SnsLoginFailureHandler extends SimpleUrlAuthenticationFailureHandler{
//
//	@Autowired
//	SnsUserServiceImpl snsUserService;
//	
//	@Override
//	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
//		super.onAuthenticationFailure(request, response, exception);
//	}
//}
