package com.project.restaurant.bbs;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BbsService {

	/**
	 * (사용자) 게시글 작성 - INSERT
	 * @param artcl
	 */
	public void artclRegist(BbsArtcl artcl);
	
	/**
	 * (사용자 & 관리자) 게시글 리스트 - SELECT
	 * @return
	 */
	public List getArtclList();
	
	/**
	 * (사용자 & 관리자) 게시글 시퀀스 번호 확인
	 * @param artclSeq
	 * @return
	 */
	public BbsArtcl selectByArtclSeq(int artclSeq);
	
	/**
	 * (사용자 & 관리자) 게시글 수정
	 * @param artcl_Seq
	 */
	public void artclUpdate(BbsArtcl artcl);
}
