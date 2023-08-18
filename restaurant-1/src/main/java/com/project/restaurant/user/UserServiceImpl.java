package com.project.restaurant.user;

import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.restaurant.login.NaverLoginBO;
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
			// 사이트에서 회원가입 시 
			if ("site".equals(user.getLoginType())) {
				String userId = user.getUserId().replaceAll(",", "");
				String encryptPw = encrypt.encrypt(user.getUserPw());
				String tel = user.getTel().replaceAll(",", "-");
				
				user.setUserId(userId);
				user.setUserPw(encryptPw);
				user.setTel(tel);
			} else {
				user.setUserPw("");
			}
			
			userService.insertUser(user);
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * 사이트에서 회원가입 시 아이디 중복 검사
	 */
	@Override
	public int duplicationUserId(String userId) {

		int result = userService.duplicationUserId(userId);
		
		return result;
	}
	
	
	/**
	 * SNS 로그인 시 아이디 & 로그인경로 검사
	 */
	@Override
	public int duplicationUser(String userId, String loginType) {
		
		int result = userService.duplicationUser(userId, loginType);
		
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
	public User loginUserInfo(String userId, String userPw) {
		
		try {
			String encryptPw = encrypt.encrypt(userPw);
			
			User user = userService.loginUserInfo(userId, encryptPw);
			
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
	public void deleteUser(int userSeq) {
		
		userService.deleteUser(userSeq);
		
	}


	/**
	 * 회원 시퀀스 번호 확인
	 */
	@Override
	public User selectByUserSeq(int userSeq) {
		
		User user = userService.selectByUserSeq(userSeq);
		
		return user;
	}


	@Override
	public void updateUserData(User user) {
		
		userService.updateUserData(user);
		
	}


	@Override
	public List<User> getUserListByUserSeq(int userSeq) {
		List<User> list = (ArrayList<User>) userService.getUserListByUserSeq(userSeq);
		
		return list;
//		User user = userService.getUserListByUserSeq(userSeq);
		
//		return user;
	}




}
