package com.project.restaurant.bbs;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BbsService {


	/**
	 * (관리자) 게시판 추가
	 * @param setup
	 */
	public void insertBbsSetup(BbsSetup setup);
}
