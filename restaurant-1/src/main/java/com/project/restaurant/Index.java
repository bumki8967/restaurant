package com.project.restaurant;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {

	@RequestMapping(value = "/")
	public String index(Model model) {
		return "/index";
	} 
}
