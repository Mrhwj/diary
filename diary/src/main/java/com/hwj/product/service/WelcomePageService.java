package com.hwj.product.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.hwj.product.model.DiaryMessage;

@Service
public class WelcomePageService extends BaseService{

	public int Login(String address,String password){
		String userNames = ReadFile("useres.properties", "userName");
		String passWords = ReadFile("useres.properties", "password");
		String[] userName = userNames.split(",");
		String[] passWord = passWords.split(",");
		for(int i = 0;i<userName.length;i++){
			if(address.equals(userName[i])){
				if(password.equals(passWord[i])){
					return 1;
				}
			}
		}
		return 0;
	}
	
	public Map<String, List<DiaryMessage>> GetDiaryMessage(String path){
		Map<String, List<DiaryMessage>> map = new HashMap<String, List<DiaryMessage>>();
		try {
			InputStream is = new FileInputStream(path+"/ExcelTable/diaryList.xls");
			List<List<Object>> list = GetBankListByExcel(is, "diaryList.xls");
			for(List<Object> l : list){
				DiaryMessage dm = new DiaryMessage();
				dm.setId(l.get(0).toString());
				dm.setUser(l.get(1).toString());
				dm.setCreateDate(l.get(2).toString());
				dm.setPath(l.get(3).toString());
				dm.setImg(l.get(4).toString());
				dm.setDescribe(l.get(5).toString());
				dm.setTitle(l.get(6).toString());
				//∑≈»Îmap
				if(map.containsKey(dm.getUser())){
					List<DiaryMessage> dmlist = map.get(dm.getUser());
					dmlist.add(dm);
					map.put(dm.getUser(), dmlist);
				}else{
					List<DiaryMessage> dmlist= new ArrayList<DiaryMessage>();
					dmlist.add(dm);
					map.put(dm.getUser(), dmlist);
				}
			}
			return map;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	} 
}
