package com.project.restaurant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Index {

	@RequestMapping(value = "/")
	public ModelAndView index() {
		
		ModelAndView mav = new ModelAndView("/index");
			
		return mav;
	}
}
