package com.lkj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lkj.dao.UserDao;
import com.lkj.entity.User;
import com.lkj.service.UserService;

//@Service("UserService") 注解用于标示此类为业务层组件,在使用时会被注解的类会自动由
//spring进行注入,无需我们创建实例
@Service("UserService")
public class UserServiceImpl implements UserService {
	// 自动注入iuserdao 用于访问数据库
	@Autowired
	UserDao UserDao;

	// 登录方法的实现,从jsp页面获取username与password

	@Override
	public boolean login(String userid, String password) {
		// System.out.println("输入的账号:" + username + "输入的密码:" + password);
		// 对输入账号进行查询,取出数据库中保存对信息
		User user = UserDao.selectById(userid);
		if (user != null) {
			 System.out.println("查询出来的账号:" + user.getUserid() + "密码:" +
			 user.getPassword());
			 System.out.println("---------");
			 System.out.println("账号:" + userid  + "密码:" +
					 password);
			 System.out.println(userid.equals(user.getUserid()));
			 System.out.println(user.getPassword().equals(password));
			if (userid.equals(user.getUserid()) && user.getPassword().equals(password))
				return true;
		}
		return false;
	}

	
	
	@Override
	public User findUser(String userid) {
		return UserDao.selectById(userid);
	}



	@Override
	public int addUser(User user) {
		return UserDao.addUser(user);
	}

	
}