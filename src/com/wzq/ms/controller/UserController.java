package com.wzq.ms.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.User;

@RequestMapping("/user/")
@Controller
public class UserController {

	@Resource(name="userDao")
	private UserDao userDao;
	
	@RequestMapping("")
	public String index(){
		return "login";
	}
	
	@RequestMapping("page")
	public String page(){
		return "user";
	}
	
	@RequestMapping("all")
	public @ResponseBody List<User> getAllUsers(){
		
		List<User> users = userDao.getALlUsers();
		
		return users;
	}
	
	
	@RequestMapping("login")
	public @ResponseBody String login(String uname,String pwd){
		String test = "uname:"+uname+" pwd:"+pwd;
		System.out.println(test);
		
		
		
		return test;
	}
	
	@RequestMapping("checkLogin")
	public @ResponseBody User checkLogin(String uname,String pwd){
		
		User u = new User();
		u.setUname(uname);
		u.setPwd(pwd);
		
		return userDao.checkLogin(u);
		
	}
	
	@RequestMapping("logout")
	public @ResponseBody String logout(HttpServletRequest request,HttpServletResponse response){
		
		Cookie[] cookies = request.getCookies();
	    for(Cookie c:cookies){
	    	if("uid".equals(c.getName())){
	    		c.setMaxAge(0);
	    		response.addCookie(c);
	    	}
	    	
	    }
		return "logout";
		
	}
}
