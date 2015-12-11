package com.library.dao;

import java.util.List;

import com.library.model.Book;

public interface IBookDao {
	public boolean addorApdataBook (Book book);
	public List<Book> getBooks ();
	public Book findBook (String name);
}
