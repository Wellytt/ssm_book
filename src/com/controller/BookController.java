package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.polo.Book;
import com.service.BookService;

@Controller
public class BookController {
	@Resource
	BookService bookService;

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	//չʾ����ͼ����Ϣ
	@RequestMapping("/allbook.do")
	public String show(@RequestParam(defaultValue="1") int pageNum,HttpSession session){
		List<Book> book=bookService.findAllBook(pageNum,8);
		session.setAttribute("book", book);
		session.setAttribute("pageNum",pageNum);
		return "allbook";
	}
	
	//���ͼ��
	@RequestMapping("/addbook.do")
	public String addBook(String bookName,String bookAuthor,int bookCounts,Double bookPrice){
		bookService.addBook(bookName, bookAuthor, bookCounts, bookPrice);
		return "redirect:/allbook.do";
	}
	
	//�޸�ͼ��
	@RequestMapping("/updatebook.do")
	public String updateBook(int bookID,String bookName,String bookAuthor,int bookCounts,Double bookPrice){
		bookService.updateBook(bookID, bookName, bookAuthor, bookCounts, bookPrice);
		return "redirect:/allbook.do";
	}
	
	//ɾ��ͼ��
	@RequestMapping("/deletebook.do")
	public String deleteBook(int bookID){
		bookService.deleteBookByID(bookID);
		return "redirect:/allbook.do";
	}
	
	//����������ѯͼ����Ϣ
	@RequestMapping("/findbyname.do")
	public String findByName(Book book,Model model,HttpServletRequest request,String bookName){
		String bookname = request.getParameter("bookName");
		Book findbyname = bookService.findBookByName(bookName);
		request.setAttribute("findbyname", findbyname);
		model.addAttribute("findbyname",findbyname);
		return "findbyname";
	}
}
