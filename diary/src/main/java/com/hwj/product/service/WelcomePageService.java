package com.hwj.product.service;

import org.springframework.stereotype.Service;

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
}
