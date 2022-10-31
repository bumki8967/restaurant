package com.project.restaurant.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserService {

	/**
	 * 회원가입 
	 * @param User
	 * @return 
	 */
	public void insertUser(User user);
	
	
	/**
	 * 사이트에서 회원가입 시 아이디 중복검사
	 * @return 
	 */
	public int duplicationUserId(String user_id);
	
	
	/**
	 * SNS 로그인 시 아이디 중복 및 로그인경로 검사
	 * @param user_id
	 * @param login_type
	 * @return
	 */
	public int duplicationUser(String user_id, String login_type);
	
	/**
	 * 이메일 중복검사
	 */
//	public int duplicationEmail(String email);
	
	/** 
	 * 로그인 시 아이디와 비밀번호 체크
	 */
	public User loginUserInfo(String user_id, String user_pw);
	
	/**
	 * 가입날짜순으로 회원검색
	 */
	public List selectUserAll();
	
	/**
	 * 회원탈퇴
	 */
	public void deleteUser(int user_seq);
	
	/**
	 * 회원 시퀀스 번호 확인
	 */
	public User selectByUserSeq(int user_seq);
	
	/**
	 * 회원정보 수정
	 */
	public void updateUserData(User user);


	
}
