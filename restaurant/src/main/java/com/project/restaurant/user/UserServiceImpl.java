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
			// 아이디 합치기
			String userId = user.getUser_id().replaceAll(",", "");
			// 비밀번호 암호화
			String encryptPw = encrypt.encrypt(user.getUser_pw());
			
			// 사이트에서 회원가입 시 핸드폰 번호 합치기
			if (user.getLogin_type().equals("site")) {
				String tel = user.getTel().replaceAll(",", "-");
				
				user.setTel(tel);
			}
			
			user.setUser_id(userId);
			user.setUser_pw(encryptPw);
			
			userService.insertUser(user);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
	}

	
	/**
	 * 사이트에서 회원가입 시 아이디 중복 검사
	 */
	@Override
	public int duplicationUserId(String user_id) {

		int result = userService.duplicationUserId(user_id);
		
		return result;
	}
	
	
	/**
	 * SNS 로그인 시 아이디 & 로그인경로 검사
	 */
	@Override
	public int duplicationUser(String user_id, String login_type) {
		
		int result = userService.duplicationUser(user_id, login_type);
		
		return result;
	}

	
	/**
	 * 이메일 중복 검사
	 
	@Override
	public int duplicationEmail(String email) {
		
		int result = userService.duplicationEmail(email);
		
		return result;
	}
*/
	
	
	
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


	/**
	 * 회원탈퇴
	 */
	@Override
	public void deleteUser(int user_seq) {
		
		userService.deleteUser(user_seq);
		
	}


	/**
	 * 회원 시퀀스 번호 확인
	 */
	@Override
	public User selectByUserSeq(int user_seq) {
		
		User user = userService.selectByUserSeq(user_seq);
		
		return user;
	}


	@Override
	public void updateUserData(User user) {
		
		userService.updateUserData(user);
		
	}




}
