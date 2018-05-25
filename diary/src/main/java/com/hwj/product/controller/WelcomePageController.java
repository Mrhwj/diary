package com.hwj.product.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hwj.product.model.DiaryMessage;
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
		String path = request.getRealPath("");
		Map<String, List<DiaryMessage>> map = welcomePageService.GetDiaryMessage(path);
		List<DiaryMessage> list = new ArrayList<DiaryMessage>();
		if(map.containsKey(userName)){
			list = map.get(userName);
		}
		SimpleDateFormat sdf = new SimpleDateFormat("MMM d, yyyy aa",Locale.ENGLISH);
		String time = sdf.format(new Date());
		mv.addObject("userName",userName);
		mv.addObject("list",list);
		mv.addObject("time",time);
		return mv;
	}
	
	@RequestMapping(value="writeView",method=RequestMethod.GET)
	public ModelAndView Write_Page(){
		String userName = request.getParameter("userName");
		ModelAndView mv = new ModelAndView("mainPage/writePage");
		mv.addObject("userName",userName);
		return mv;
	}
	
	@RequestMapping(value="saveDiary",method=RequestMethod.POST)
	public @ResponseBody ResponseModel<Object> SaveDiary(){
		String excelPath = request.getRealPath("")+"/ExcelTable/diaryList.xls";
		try {
			String userName = request.getParameter("userName");
			String title = request.getParameter("title");
			String describe = request.getParameter("describe");
			String memo = request.getParameter("memo");

			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
			String filePath = request.getRealPath("/diaryFile/"+userName+"/");
			Calendar c = Calendar.getInstance();
			Date date = new Date();
			c.setTime(date);
			filePath += c.get(Calendar.YEAR) + "/" + (c.get(Calendar.MONTH)+1)+"/";
			filePath += sdf.format(new Date()) + ".txt";
			welcomePageService.WriteToTxt(filePath, memo,title);
			DiaryMessage dm = new DiaryMessage();
			dm.setCreateDate(new SimpleDateFormat("yyyy-MM-dd").format(date));
			dm.setPath(filePath);
			dm.setTitle(title);
			dm.setDescribe(describe);
			dm.setUser(userName);
			int stat = welcomePageService.AppendData(dm, excelPath);
			ResponseModel<Object> rm = null;
			if(stat==1){
				rm = new ResponseModel<Object>(1,"保存成功");
			}else{
				rm = new ResponseModel<Object>(0,"保存失败");
			}
			return rm;
		} catch (Exception e) {
			ResponseModel<Object> rm = new ResponseModel<Object>(1,"保存失败");
			return rm;
		}
	}
	
	@RequestMapping(value="openText",method=RequestMethod.GET)
	public void openTxt(){
		String path = request.getParameter("path");
		String str = "cmd.exe  /c notepad "+path;
		try {
			Process process = Runtime.getRuntime().exec(str);
			process.waitFor();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
