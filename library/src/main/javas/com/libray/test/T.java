package com.libray.test;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import com.library.action.UserAction;
import com.library.model.User;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
@Component
public class T {
	@Resource
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<User> t () {
		Session session=getSessionFactory().openSession();
		Transaction ts=session.beginTransaction();
		Query query = session.createQuery(" from User");
		List<User> list = query.list();
		System.out.println (list);
		ts.commit();
		session.close();
		return list;
	}

}
