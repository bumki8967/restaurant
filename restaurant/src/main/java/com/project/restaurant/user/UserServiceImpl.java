package com.project.restaurant.user;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserService userService;
	

	@Override
	public void insertUser(User userInfo) {
		// 아이디 | 이메일 중복검사
//		dupliecationUserId(userInfo);
//		dupliecationEmail(userInfo);
//		System.out.println("service		" + userInfo);
		
		// 현재 날짜 구하기        
		LocalDate now = LocalDate.now();         
		// 포맷 정의        
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");         
		// 포맷 적용        
		String today = now.format(formatter);         
		// 결과 출력        
		
		
		userInfo.setReg_date(today);
		
//		int	result = userInfoService.insertUser(userInfo);
		userService.insertUser(userInfo);
//		return result;
	}

	@Override
	public int duplicationUserId(String user_id) {

		int result = userService.duplicationUserId(user_id);
		
		return result;
	}

	@Override
	public int duplicationEmail(String email) {
		
		int result = userService.duplicationEmail(email);
		
		return result;
	}

}
