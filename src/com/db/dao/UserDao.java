package com.db.dao;

import org.apache.ibatis.annotations.Param;

import com.polo.User;
/**
 *�û�Dao�ӿ�
 */
public interface UserDao {
	//�û���¼
	public User login(@Param("username") String username,@Param("password") String password);
	
	//�����û�
	public void save(@Param("username") String username,@Param("password") String password);
}
