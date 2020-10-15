package com.service;

import com.db.dao.UserDao;
import com.polo.User;
/*
 * 用户业务逻辑层
 */
public class UserService {
	UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//用户登录
	public User login(String username,String password){
		return userDao.login(username, password);
	}
	
	//添加用户
	public void save(String username,String password){
		userDao.save(username, password);
	}
	
}
