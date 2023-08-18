//package com.project.restaurant.user;
//
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
//import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
//import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
//import org.springframework.security.oauth2.core.user.OAuth2User;
//import org.springframework.stereotype.Service;
//
//@Service
//public class SnsUserServiceImpl extends DefaultOAuth2UserService {
//
////	@Autowired
////	SnsUserRepository userRepository;
//	
//	@Autowired
//	private UserService userService;
//	
//	@Override
//	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
//		
//		Map<String, Object> attributes = super.loadUser(userRequest).getAttributes();
//		
//		String userId = null;
//		String loginType = userRequest.getClientRegistration().getRegistrationId();
//		
//		OAuth2User user2 = super.loadUser(userRequest);
//		
//		if ("kakao".equals(loginType.toLowerCase())) {
//			userId = ((Map<String, Object>) attributes.get("kakao_account")).get("email").toString();
//		} else if ("naver".equals(loginType.toLowerCase())) {
//			userId = ((Map<String, Object>) attributes.get("response")).get("email").toString();
//		} else if ("google".equals(loginType.toLowerCase())) {
//			userId = attributes.get("email").toString();
//		}
//		
//		int result = userService.duplicationUser(userId, loginType);
//		
//		if (result < 0) {
//			User user = new User();
//			user.setUserId(userId);
//			user.setUserType(loginType);
//			
//			userService.insertUser(user); 
//		}
//		
//		return super.loadUser(userRequest);
//	}
//	
////	public User getuserByEamilAndOAuthType(String userId, String loginType) {
////		return userRepository.findByEmailAndOauthType(userId, loginType).orElse(null);
////	}
//}
