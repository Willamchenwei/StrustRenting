package com.library.service;

import com.library.model.User;

public interface IUserService {
	public User checkUser (User user);
	public boolean addorUpdataUser (User user);
}
