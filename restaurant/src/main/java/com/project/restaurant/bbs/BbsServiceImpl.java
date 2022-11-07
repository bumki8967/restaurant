package com.project.restaurant.bbs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BbsServiceImpl implements BbsService {
	
	@Autowired
	private BbsService bbsService;

	/**
	 * 게시판 생성
	 */
	@Override
	public void insertBbsSetup(BbsSetup setup) {
		
		bbsService.insertBbsSetup(setup);
		
	}

}
