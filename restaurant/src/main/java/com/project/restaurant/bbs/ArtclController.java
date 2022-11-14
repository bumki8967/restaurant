package com.project.restaurant.bbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtclController {
	
	@Autowired
	private BbsServiceImpl bbsServiceImpl;

	
	/**
	 * 게시글 리스트
	 * @return
	 */
	@RequestMapping("/{board}/artclList")
	public ModelAndView artclList(@PathVariable("board") String board) {
		
		System.out.println("Controller artclList");
		ModelAndView mav = new ModelAndView(board + "/artclList");
		
		List<BbsArtcl> artclList = bbsServiceImpl.getArtclList();
		
		mav.addObject("artclList", artclList);
		
		return mav;
	}
	
	/**
	 * 게시글 작성 화면
	 * @param board
	 * @return
	 */
	@RequestMapping("/{board}/artclRegistView")
	public ModelAndView artclRegistView(@PathVariable("board") String board) {
		
		System.out.println("Controller artclRegistView");
		ModelAndView mav = new ModelAndView(board + "/artclRegistView");
		
		return mav;
	}
	
	
	/**
	 * 게시글 작성
	 * @param board
	 * @param artcl
	 */
	@RequestMapping("/{board}/artclRegist.do")
	public String artclRegist(@PathVariable("board") String board, BbsArtcl artcl) {
		
		System.out.println("Controller	artclRegist		Start!!!!!");
		
		bbsServiceImpl.artclRegist(artcl);
		
		System.out.println("Controller	artclRegist		End!!!!!");
		
		return "redirect:/{board}/artclList";
	}
	
	/**
	 * 게시글 수정 화면
	 * @param board
	 * @param artclSeq
	 * @return
	 */
	@RequestMapping("/{board}/artclEditView")
	public ModelAndView artclEditView(@PathVariable("board") String board, @RequestParam(value = "artclSeq") int artclSeq) {
		
		System.out.println("Controller artclEditView");
		ModelAndView mav = new ModelAndView(board + "/artclEditView");
		
		BbsArtcl artcl = bbsServiceImpl.selectByArtclSeq(artclSeq);
		System.out.println("Controller artclEditView artcl	::	" + artcl);
		
		mav.addObject("artcl", artcl);
		
		return mav;
		
	}
	
}
