package com.service;

import com.db.dao.UserDao;
import com.polo.User;
/*
 * �û�ҵ���߼���
 */
public class UserService {
	UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//�û���¼
	public User login(String username,String password){
		return userDao.login(username, password);
	}
	
	//����û�
	public void save(String username,String password){
		userDao.save(username, password);
	}
	
}
