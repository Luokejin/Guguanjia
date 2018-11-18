package com.lkj.service;

import com.lkj.entity.User;

public interface UserService {
	public boolean login(String username,String password);
	public int addUser(User user);
	public User findUser(String userid);
}
