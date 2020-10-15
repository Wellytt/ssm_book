package com.db.dao;

import org.apache.ibatis.annotations.Param;

import com.polo.User;
/**
 *用户Dao接口
 */
public interface UserDao {
	//用户登录
	public User login(@Param("username") String username,@Param("password") String password);
	
	//增加用户
	public void save(@Param("username") String username,@Param("password") String password);
}
