package com.hwj.product.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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
				//����map
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
	
	public void WriteToTxt(String filePath, String content,String title) {
        try{
        	File file = new File(filePath);
        	if(!file.exists()){
        		file.getParentFile().mkdirs();
        		file.createNewFile();
        	}
            BufferedWriter writer = new BufferedWriter(new FileWriter(file,true));
            writer.write(title +"\n"+content);
            writer.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
	
	public int AppendData(DiaryMessage dm,String filePath) {
		try {  
			InputStream is = new FileInputStream(filePath);
			Workbook wb = getWorkbook(is,"diaryList.xls");
			Sheet sheet = wb.getSheetAt(0);  //��ȡ����������Ϊһ��excel�����ж��������  
			Row row=sheet.getRow(0);  //��ȡ��һ�У�excel�е���Ĭ�ϴ�0��ʼ�����������Ϊʲô��һ��excel�������ֶ���ͷ���������ֶ���ͷ�����ڸ�ֵ  
	          
	        FileOutputStream out=new FileOutputStream(filePath);  //��d://test.xls��д����  
	        row=sheet.createRow((short)(sheet.getLastRowNum()+1)); //�������кź�׷������  
	        row.createCell(0).setCellValue(dm.getId()); //���õ�һ������0��ʼ����Ԫ�������  
	        row.createCell(1).setCellValue(dm.getUser()); //���õڶ�������0��ʼ����Ԫ�������  
	        row.createCell(2).setCellValue(dm.getCreateDate());
	        row.createCell(3).setCellValue(dm.getPath());
	        row.createCell(4).setCellValue(dm.getImg());
	        row.createCell(5).setCellValue(dm.getDescribe());
	        row.createCell(6).setCellValue(dm.getTitle());
	          
	        out.flush();  
	        wb.write(out);    
	        out.close(); 
	        return 1;
	        //System.out.println(row.getPhysicalNumberOfCells()+" "+row.getLastCellNum());
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}    
	}
}
