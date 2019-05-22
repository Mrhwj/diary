package com.hwj.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/manage")
public class ManageBroadController {
	
	@RequestMapping(value="broadView",method=RequestMethod.GET)
	public ModelAndView Index_PageView(){
		ModelAndView mv = new ModelAndView("manage/mainBroad");
		return mv;
	}
	
	@RequestMapping(value="broadOverView",method=RequestMethod.GET)
	public ModelAndView Index_PageOverView(){
		ModelAndView mv = new ModelAndView("manage/indexPage");
		return mv;
	}
	
	@RequestMapping(value="articleList",method=RequestMethod.GET)
	public ModelAndView ArticleList(){
		ModelAndView mv = new ModelAndView("manage/articleList");
		return mv;
	}
	@RequestMapping(value="inBoxList",method=RequestMethod.GET)
	public ModelAndView InboxList(){
		ModelAndView mv = new ModelAndView("manage/InboxList");
		return mv;
	}
	
	@RequestMapping(value="dataView",method=RequestMethod.GET)
	public ModelAndView DataView(){
		ModelAndView mv = new ModelAndView("manage/dateper");
		return mv;
	}
	@RequestMapping(value="MemoView",method=RequestMethod.GET)
	public ModelAndView MemoView(){
		ModelAndView mv = new ModelAndView("manage/memoList");
		return mv;
	}
}
