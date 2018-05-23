package com.hwj.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/manage")
public class WelcomePageController {
	
	@RequestMapping(value="/welcome",method=RequestMethod.GET)
	public ModelAndView Welcome_Page(){
		ModelAndView mv = new ModelAndView("welcome/index");
		return mv;
	}
}
