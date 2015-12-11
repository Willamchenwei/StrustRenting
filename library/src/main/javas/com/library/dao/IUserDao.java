package com.library.dao;

import com.library.model.User;

public interface IUserDao {
	public User checkUser (User user);
	public boolean addorUpdataUser (User user);
}
