package com.rain.kbm.exception;

public class AppException extends Exception {
	private static final long serialVersionUID = 1L;
	
	String code;
	String msg;
	public AppException(String code,String msg){
		this.code = code;
		this.msg = msg;
	}
	
	public AppException(String message){
		super(message);
	}
	
	
	
}
