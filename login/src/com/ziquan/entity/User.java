package com.ziquan.entity;

public class User {
	private Integer userId;//用户ID
	private String userNo;//用户No
	private String userName;//用户名字
	private String userPwd;//用户密码
	private Integer userFlag;//是否可用
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public Integer getUserFlag() {
		return userFlag;
	}
	public void setUserFlag(Integer userFlag) {
		this.userFlag = userFlag;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userNo=" + userNo + ", userName="
				+ userName + ", userPwd=" + userPwd + ", userFlag=" + userFlag
				+ "]";
	}
	
	
	
	
	
	
			
}
