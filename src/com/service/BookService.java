package com.service;
import java.util.List;
import com.db.dao.BookDao;
import com.polo.Book;
/*
 * 图书业务逻辑层
 */
public class BookService {
	BookDao bookDao;

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	
	//添加图书
	public void addBook(String bookName,String bookAuthor,int bookCounts,Double bookPrice) {
	    bookDao.addBook(bookName,bookAuthor,bookCounts,bookPrice);
	}
	
	//根据id删除图书
	public void deleteBookByID(int bookID) {
		bookDao.deleteBookByID(bookID);
	}
	
	//修改图书
	public void updateBook(int bookID,String bookName,String bookAuthor,int bookCounts,Double bookPrice) {
		bookDao.updateBook(bookID,bookName,bookAuthor,bookCounts,bookPrice);
	}
	
	//根据书名查找图书
	public Book findBookByName(String bookName) {
		return bookDao.findBookByName(bookName);
	}
	
	//查找全部图书
	public List<Book> findAllBook(int pageNum,int pageSize) {
		return bookDao.findAllBook(pageNum,pageSize);
	}
}
