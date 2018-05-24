package com.hwj.product.service;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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
	
	public  Workbook getWorkbook(InputStream inStr,String fileName) throws Exception{  
        Workbook wb = null;  
        String fileType = fileName.substring(fileName.lastIndexOf("."));  
        if(".xls".equals(fileType)){  
            wb = new HSSFWorkbook(inStr);  //2003-  
        }else{  
            throw new Exception("�������ļ���ʽ����");  
        }  
        return wb;  
    } 
	
	public  List<List<Object>> GetBankListByExcel(InputStream in,String fileName) throws Exception{  
        List<List<Object>> list = null;  
          
        //����Excel������  
        Workbook work = this.getWorkbook(in,fileName);  
        if(null == work){  
            throw new Exception("����Excel������Ϊ�գ�");  
        }  
        Sheet sheet = null;  
        Row row = null;  
        Cell cell = null;  
          
        list = new ArrayList<List<Object>>();  
        //����Excel�����е�sheet  
        for (int i = 0; i < work.getNumberOfSheets(); i++) {  
            sheet = work.getSheetAt(i);  
            if(sheet==null){continue;}  
              
            //������ǰsheet�е�������  
            for (int j = sheet.getFirstRowNum(); j <= sheet.getLastRowNum(); j++) {  
                row = sheet.getRow(j);  
                if(row==null||row.getFirstCellNum()==j){continue;}  
                  
                //�������е���  
                List<Object> li = new ArrayList<Object>();  
                for (int y = row.getFirstCellNum(); y <= row.getLastCellNum(); y++) {  
                    cell = row.getCell(y);  
                    li.add(cell);  
                }  
                list.add(li);  
            }  
        }   
        return list;  
    } 
}
