package com.service;
import java.util.List;
import com.db.dao.BookDao;
import com.polo.Book;
/*
 * ͼ��ҵ���߼���
 */
public class BookService {
	BookDao bookDao;

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	
	//���ͼ��
	public void addBook(String bookName,String bookAuthor,int bookCounts,Double bookPrice) {
	    bookDao.addBook(bookName,bookAuthor,bookCounts,bookPrice);
	}
	
	//����idɾ��ͼ��
	public void deleteBookByID(int bookID) {
		bookDao.deleteBookByID(bookID);
	}
	
	//�޸�ͼ��
	public void updateBook(int bookID,String bookName,String bookAuthor,int bookCounts,Double bookPrice) {
		bookDao.updateBook(bookID,bookName,bookAuthor,bookCounts,bookPrice);
	}
	
	//������������ͼ��
	public Book findBookByName(String bookName) {
		return bookDao.findBookByName(bookName);
	}
	
	//����ȫ��ͼ��
	public List<Book> findAllBook(int pageNum,int pageSize) {
		return bookDao.findAllBook(pageNum,pageSize);
	}
}
