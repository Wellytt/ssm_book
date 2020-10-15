package com.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.polo.Book;

/**
 * ͼ��dao�ӿ�
 */
public interface BookDao {
	
    //����鼮
    public void addBook(@Param("bookName")String bookName,
    		@Param("bookAuthor")String bookAuthor,
    		@Param("bookCounts")int bookCounts,
    		@Param("bookPrice")Double bookPrice);

    //����idɾ���鼮
    public void deleteBookByID(@Param("bookID")int bookID);

    //�޸��鼮
    public void updateBook(@Param("bookID")int bookID,
    		@Param("bookName")String bookName,
    		@Param("bookAuthor")String bookAuthor,
    		@Param("bookCounts")int bookCounts,
    		@Param("bookPrice")Double bookPrice);

    //����������ѯ�鼮
    public Book findBookByName(@Param("bookName")String bookName);

    //��ѯ�����鼮
	public List<Book> findAllBook(@Param("pageNum")int pageNum,@Param("pageSize")int pageSize);

}