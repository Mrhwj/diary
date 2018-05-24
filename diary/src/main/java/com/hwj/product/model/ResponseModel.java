package com.hwj.product.model;

import java.util.List;

public class ResponseModel<T> {
	public Integer Success;
	public T Data;
	public List<T> Rows;
	public Integer Total;
	public String Message;
	
	public ResponseModel(){}
	public ResponseModel(int success,String message){
		this.Success = success;
		this.Message = message;
	}
	public ResponseModel(int success,T data,String message){
		this.Success = success;
		this.Data = data;
		this.Message = message;
	}
	public ResponseModel(int success,List<T> rows,String message){
		this.Success = success;
		this.Rows = rows;
		this.Message = message;
	}
	public ResponseModel(int success,List<T> rows,int total){
		this.Success = success;
		this.Rows = rows;
		this.Total = total;
	}
	public ResponseModel(int success,List<T> rows,int total,String message){
		this.Success = success;
		this.Rows = rows;
		this.Total = total;
		this.Message = message;
	}
}
