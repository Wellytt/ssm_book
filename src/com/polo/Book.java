package com.polo;
/**
 *图书实体类
 */
public class Book{
	private int bookID;
	private String bookName;
	private String bookAuthor;
	private int bookCounts;
	private Double bookPrice;
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public int getBookCounts() {
		return bookCounts;
	}
	public void setBookCounts(int bookCounts) {
		this.bookCounts = bookCounts;
	}
	public Double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Double bookPrice) {
		this.bookPrice = bookPrice;
	}
}
