package com.lkj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lkj.dao.UserDao;
import com.lkj.entity.User;
import com.lkj.service.UserService;

//@Service("UserService") ע�����ڱ�ʾ����Ϊҵ������,��ʹ��ʱ�ᱻע�������Զ���
//spring����ע��,�������Ǵ���ʵ��
@Service("UserService")
public class UserServiceImpl implements UserService {
	// �Զ�ע��iuserdao ���ڷ������ݿ�
	@Autowired
	UserDao UserDao;

	// ��¼������ʵ��,��jspҳ���ȡusername��password

	@Override
	public boolean login(String userid, String password) {
		// System.out.println("������˺�:" + username + "���������:" + password);
		// �������˺Ž��в�ѯ,ȡ�����ݿ��б������Ϣ
		User user = UserDao.selectById(userid);
		if (user != null) {
			 System.out.println("��ѯ�������˺�:" + user.getUserid() + "����:" +
			 user.getPassword());
			 System.out.println("---------");
			 System.out.println("�˺�:" + userid  + "����:" +
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