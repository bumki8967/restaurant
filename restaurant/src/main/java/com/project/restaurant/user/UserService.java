package com.project.restaurant.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserService {

	/**
	 * 회원가입 (아이디, 이메일 중복검사 후 가입)
	 * @param userInfo
	 * @return 
	 */
	public void insertUser(User userInfo);
	
	
	/**
	 * 아이디 중복검사
	 * @return 
	 */
	public int duplicationUserId(String user_id);
	
	/**
	 * 이메일 중복검사
	 */
	public int duplicationEmail(String email);
}
