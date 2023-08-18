package com.project.restaurant.bbs;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BbsServiceImpl implements BbsService {
	
	@Autowired
	private BbsService bbsService;

	/**
	 * (사용자) 게시글 작성 
	 */
	@Override
	public void artclRegist(BbsArtcl artcl) {
		
		bbsService.artclRegist(artcl);
		
	}

	/**
	 * (사용자 & 관리자) 게시글 목록 
	 */
	@Override
	public List getArtclList() {
		
		ArrayList<BbsArtcl> list = (ArrayList<BbsArtcl>) bbsService.getArtclList();
		
		return list;
	}

	/**
	 * (사용자 & 관리자) 게시글 시퀀스 번호 확인
	 */
	@Override
	public BbsArtcl selectByArtclSeq(int artclSeq) {

		BbsArtcl artcl = bbsService.selectByArtclSeq(artclSeq);
		
		return artcl;
	}

	/**
	 * (사용자 & 관리자) 게시글 수정
	 */
	@Override
	public void artclUpdate(BbsArtcl artcl) {
		
		bbsService.artclUpdate(artcl);
	}

}
