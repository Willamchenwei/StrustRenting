package com.library.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.library.model.User;

import com.library.service.impl.UserService;
import com.libray.test.T;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Component
@Scope ("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	private User user = new User ();
	@Resource
	private UserService userService;
	private HttpServletRequest request;
	public String login () {
		Map<String , User> session = (Map)ActionContext.getContext().getSession();
		User user1 = userService.checkUser(user);
		System.out.println (user1);
		if (user1 != null) {
			session.put("user", user1);
			return SUCCESS;
		}
		else
			return ERROR;
	}
	public String addUser () {
		request = (HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		
		userService.addorUpdataUser(user);
		return SUCCESS;
	}
	public String updataUser () {
		userService.addorUpdataUser(user);
		return SUCCESS;
	}
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
}
