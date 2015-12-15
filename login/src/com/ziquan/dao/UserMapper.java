package com.ziquan.dao;

import org.springframework.stereotype.Repository;

import com.ziquan.entity.User;


@Repository
public interface UserMapper {
	public User tologin(User user)throws Exception;

	
}

