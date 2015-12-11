package com.library.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "Book")
public class Book {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String picture;
	private String describle;
	private String athor;
	private String category;
	private String bookState;
	private int totalSearch;
	private Date groundDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDescrible() {
		return describle;
	}
	public void setDescrible(String describle) {
		this.describle = describle;
	}
	public String getAthor() {
		return athor;
	}
	public void setAthor(String athor) {
		this.athor = athor;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBookState() {
		return bookState;
	}
	public void setBookState(String bookState) {
		this.bookState = bookState;
	}
	public int getTotalSearch() {
		return totalSearch;
	}
	public void setTotalSearch(int totalSearch) {
		this.totalSearch = totalSearch;
	}
	public Date getGroundDate() {
		return groundDate;
	}
	public void setGroundDate(Date groundDate) {
		this.groundDate = groundDate;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", picture=" + picture + ", describle=" + describle + ", athor="
				+ athor + ", category=" + category + ", bookState=" + bookState + ", totalSearch=" + totalSearch
				+ ", groundDate=" + groundDate + "]";
	}
	
	
	
}
