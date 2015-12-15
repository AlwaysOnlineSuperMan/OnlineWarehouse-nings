package com.ziquan.service.imp;

import com.ziquan.entity.User;

public interface IUserService {
	/**
	 * 登陆
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public abstract User tologin(User user) throws Exception;

}