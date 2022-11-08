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
	 * (관리자) 게시판 생성
	 */
	@Override
	public void insertBbsSetup(BbsSetup setup) {
		
		System.out.println("bbsSetupRegist	Impl	Start!!!!");
		
		bbsService.insertBbsSetup(setup);
		
		System.out.println("bbsSetupRegist	Impl	Start!!!!");
	}

	
	/**
	 * (관리자) 생성된 게시판 리스트
	 */
	@Override
	public List selectBbsSetupList() {
		
		ArrayList<BbsSetup> list = (ArrayList<BbsSetup>) bbsService.selectBbsSetupList();
		
		return list;
	}

}
