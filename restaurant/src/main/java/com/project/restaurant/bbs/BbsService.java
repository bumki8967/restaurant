package com.project.restaurant.bbs;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BbsService {


	/**
	 * (관리자) 게시판 추가
	 * @param setup
	 */
	public void insertBbsSetup(BbsSetup setup);
	
	
	/**
	 * (관리자) 생성된 게시판 리스트
	 * @return
	 */
	public List selectBbsSetupList();
}
