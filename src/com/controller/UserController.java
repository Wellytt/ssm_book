package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.polo.User;
import com.service.UserService;

@Controller
public class UserController {
	@Resource
	UserService userService;
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//用户登录
	@RequestMapping("/login.do")
	public String login(String username,String password){
		User user=userService.login(username, password);
		if(user==null){
			return "fail";
		}else if(user.getUsername().equals(username) && user.getPassword().equals(password)){
			return "redirect:/allbook.do";
		}else{
			return "fail";
		}
	}
	
	//用户注册
	@RequestMapping("/zhuce.do")
	public String zhuce(String username,String password){
		userService.save(username, password);
			return "success";
	}
	
}
