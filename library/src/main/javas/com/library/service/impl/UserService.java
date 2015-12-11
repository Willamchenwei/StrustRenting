package com.library.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.library.dao.impl.UserDao;
import com.library.model.User;
import com.library.service.IUserService;
@Component
public class UserService implements IUserService{
	@Resource
	private UserDao userDao;
	public User checkUser(User user) {
		// TODO Auto-generated method stub
		User user1 = userDao.checkUser(user);
		return user1;
	}

	public boolean addorUpdataUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addorUpdataUser(user);
	}



}
