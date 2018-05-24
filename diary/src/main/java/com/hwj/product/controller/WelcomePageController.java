package com.hwj.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hwj.product.model.ResponseModel;
import com.hwj.product.service.WelcomePageService;

@Controller
@RequestMapping(value="/manage")
public class WelcomePageController {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	WelcomePageService welcomePageService;
	
	@RequestMapping(value="/welcome",method=RequestMethod.GET)
	public ModelAndView Welcome_Page(){
		ModelAndView mv = new ModelAndView("welcome/index");
		return mv;
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public @ResponseBody ResponseModel<Object> Login(){
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		int state = welcomePageService.Login(address, password);
		ResponseModel<Object> rm = new ResponseModel<Object>(state, address);
		return rm;
	}
	
	@RequestMapping(value="mainView",method=RequestMethod.GET)
	public ModelAndView Main_Page(){
		String userName = request.getParameter("userName");
		ModelAndView mv = new ModelAndView("mainPage/mainPage");
		mv.addObject("userName",userName);
		return mv;
	}
}
