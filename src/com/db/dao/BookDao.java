package com.db.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.polo.Book;

/**
 * 图书dao接口
 */
public interface BookDao {
	
    //添加书籍
    public void addBook(@Param("bookName")String bookName,
    		@Param("bookAuthor")String bookAuthor,
    		@Param("bookCounts")int bookCounts,
    		@Param("bookPrice")Double bookPrice);

    //根据id删除书籍
    public void deleteBookByID(@Param("bookID")int bookID);

    //修改书籍
    public void updateBook(@Param("bookID")int bookID,
    		@Param("bookName")String bookName,
    		@Param("bookAuthor")String bookAuthor,
    		@Param("bookCounts")int bookCounts,
    		@Param("bookPrice")Double bookPrice);

    //根据书名查询书籍
    public Book findBookByName(@Param("bookName")String bookName);

    //查询所有书籍
	public List<Book> findAllBook(@Param("pageNum")int pageNum,@Param("pageSize")int pageSize);

}