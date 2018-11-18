package com.lkj.dao;


import com.lkj.entity.User;


public interface UserDao {
	public User selectById(String id);
	public User selectByName(String username);
	public int addUser(User user);
}
