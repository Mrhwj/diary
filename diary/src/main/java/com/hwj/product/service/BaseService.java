package com.hwj.product.service;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

import org.springframework.stereotype.Service;

@Service
public class BaseService {
	
	public String ReadFile(String fileName,String val) {
		Properties prop = new Properties();
		InputStream inputStream = this.getClass().getResourceAsStream("../propertises/"+fileName);
		try {
			prop.load(inputStream);
			String value = prop.getProperty(val);
			inputStream.close();
			return value;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	public int update(String fileName,String key,String value){
		String profilepath = this.getClass().getResource("/").getPath() + "/propertises/"+fileName;
		try {
			Properties props = new Properties();
			props.load(new FileInputStream(profilepath));
			OutputStream fos = new FileOutputStream(profilepath);
			props.setProperty(key, value);
			props.store(fos, "Update value");
			fos.close();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
