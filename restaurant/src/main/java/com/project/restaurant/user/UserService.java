package com.project.restaurant.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserService {

	/**
	 * 회원가입 (아이디, 이메일 중복검사 후 가입)
	 * @param userInfo
	 * @return 
	 */
	public void insertUser(User user);
	
	
	/**
	 * 아이디 중복검사
	 * @return 
	 */
	public int duplicationUserId(String user_id);
	
	/**
	 * 이메일 중복검사
	 */
	public int duplicationEmail(String email);
	
	/** 
	 * 로그인 시 아이디와 비밀번호 체크
	 */
	public User loginUserInfo(String user_id, String user_pw);
	
	/**
	 * 가입날짜순으로 회원검색
	 */
	public List selectUserAll();
}
