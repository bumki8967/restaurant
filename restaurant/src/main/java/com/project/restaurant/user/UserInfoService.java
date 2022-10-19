package com.project.restaurant.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserInfoService {

	/**
	 * 회원가입 (아이디, 이메일 중복검사 후 가입)
	 * @param userInfo
	 * @return 
	 */
	public void insertUser(UserInfo userInfo);
	
	
	/**
	 * 아이디 중복검사
	 * @return 
	 */
	public int dupliecationUserId(UserInfo userInfo);
	
	/**
	 * 이메일 중복검사
	 */
	public int dupliecationEmail(UserInfo userInfo);
}
