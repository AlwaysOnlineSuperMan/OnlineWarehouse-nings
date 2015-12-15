package com.ziquan.util;



public class AppException extends RuntimeException {
	
	private String message;
	public AppException() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AppException(String arg0) {
		message = arg0;
		
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	


}
