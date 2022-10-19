package com.project.restaurant.bbs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtclController {

	
	/**
	 * 게시판 리스트
	 * @return
	 */
	@RequestMapping(value = "/{board}" + "/artclList")
	public ModelAndView artclList(@PathVariable("board") String board) {
		
		System.out.println("Controller artclList");
		ModelAndView mav = new ModelAndView("/bbs/artclList");
		
		return mav;
	}
	
	
	@RequestMapping(value = "/{board}" + "/artclRegistView")
	public ModelAndView artclRegistView(@PathVariable("board") String board) {
		
		System.out.println("Controller artvlRegistView");
		ModelAndView mav = new ModelAndView("/bbs/artclRegistView");
		
		return mav;
	}
}
