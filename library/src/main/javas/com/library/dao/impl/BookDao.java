package com.library.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;

import com.library.dao.IBookDao;
import com.library.model.Book;
@Component
public class BookDao implements IBookDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public boolean addorApdataBook(Book book) {
		Session session = sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		ts.begin();
		session.saveOrUpdate(book);
		ts.commit();
		session.close();
		return false;
	}

	public List<Book> getBooks() {
		// TODO Auto-generated method stub
		return null;
	}

	public Book findBook(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
