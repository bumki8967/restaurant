package com.project.restaurant.user;

import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.restaurant.util.Encrypt;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private Encrypt encrypt;
	

	/**
	 * 회원가입
	 */
	@Override
	public void insertUser(User user) {
		
		try {
			// 비밀번호 암호화
			String encryptPw = encrypt.encrypt(user.getUser_pw());
			// 핸드폰 번호 합치기
			String tel = user.getTel().replaceAll(",", "-");
			// 현재 날짜 구하기        
			LocalDate now = LocalDate.now();         
			// 포맷 정의        
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");         
			// 포맷 적용        
			String today = now.format(formatter);         
			
			user.setUser_pw(encryptPw);
			user.setTel(tel);
			user.setReg_date(today);
			
			userService.insertUser(user);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
	}

	
	/**
	 * 아이디 중복 검사
	 */
	@Override
	public int duplicationUserId(String user_id) {

		int result = userService.duplicationUserId(user_id);
		
		return result;
	}

	
	/**
	 * 이메일 중복 검사
	 */
	@Override
	public int duplicationEmail(String email) {
		
		int result = userService.duplicationEmail(email);
		
		return result;
	}

	
	/**
	 * 로그인 시 아이디와 비밀번호 체크
	 */
	@Override
	public User loginUserInfo(String user_id, String user_pw) {
		
		try {
			String encryptPw = encrypt.encrypt(user_pw);
			
			User user = userService.loginUserInfo(user_id, encryptPw);
			
			return user;
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

	
	/**
	 * 가입날짜순으로 회원검색
	 */
	public List selectUserAll() {
		
		ArrayList<User> list = (ArrayList<User>) userService.selectUserAll();
		
		return list;
	}
}
