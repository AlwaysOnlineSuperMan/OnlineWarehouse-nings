package com.ziquan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ziquan.dao.UserMapper;
import com.ziquan.entity.User;
import com.ziquan.service.imp.IUserService;
import com.ziquan.util.AppException;
@Service
public class UserService  implements IUserService {
	@Autowired
	private UserMapper userDao;
	/* (non-Javadoc) 登陆查询
	 * @see com.zy.service.IUserService#tologin(com.zy.entity.User)
	 */
	@Override
	public User tologin(User user)throws Exception{
		User loginUser = userDao.tologin(user);
		
	if (loginUser!=null && loginUser.getUserFlag()==0) {
		throw new AppException(loginUser.getUserName()+"  此号被禁用.。。！");
	}
		
		return loginUser;
	}
}
