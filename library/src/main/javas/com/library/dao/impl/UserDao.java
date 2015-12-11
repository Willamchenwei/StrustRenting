package com.library.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;

import com.library.dao.IUserDao;
import com.library.model.User;
@Component
public class UserDao implements IUserDao{
	@Resource
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public User checkUser(User user) {
		Session session=getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		Query query = session.createQuery("from User where name='"
		+user.getName()+"' and password='"+user.getPassword()+"'" );
		List<User> list = query.list();
		ts.commit();
		session.close();
		if (list.size() != 0) {
			User user1 = new User ();
			user1 = list.get(0);
			return user1;
		} else
			return null;
		
	}

	public boolean addorUpdataUser(User user) {
		System.out.println (user);
		Session session = getSessionFactory ().openSession();
		Transaction ts=session.beginTransaction();
		session.saveOrUpdate(user);
		ts.commit();
		session.close();
		return true;
	}

}
