package com.project.restaurant.user;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.restaurant.util.WebHelper;

@Service
public class UserInfoServiceImpl implements UserInfoService {
	
	@Autowired
	private UserInfoService userInfoService;
	

	@Override
	public void insertUser(UserInfo userInfo) {
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
		userInfoService.insertUser(userInfo);
//		return result;
	}

	@Override
	public int dupliecationUserId(UserInfo userInfo) {

		int result = userInfoService.dupliecationUserId(userInfo);
		
		return result;
	}

	@Override
	public int dupliecationEmail(UserInfo userInfo) {
		
		int result = userInfoService.dupliecationEmail(userInfo);
		
		return result;
	}

}
