package com.wzq.ms.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.User;
import com.wzq.ms.tools.MD5;

@RequestMapping("/user/")
@Controller
public class UserController {

	@Resource(name="userDao")
	private UserDao userDao;
	
	@RequestMapping("")
	public String index(){
		return "login";
	}

	

	
	@RequestMapping("all")
	public String getAll(Model m){

		List<User> users = userDao.getALlUsers();
		m.addAttribute("users", users);
		return "user";
	}
	

	@RequestMapping("checkLogin")
	public @ResponseBody User checkLogin(String uname,String pwd){
		
		User u = new User();
		u.setUname(uname);
		u.setPwd(MD5.md5Edcode(pwd));
		
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
	
	@RequestMapping("add")
	public @ResponseBody String add(String uname,String pwd,boolean suFlag){
		User u = new User();
		u.setPwd(pwd);
		u.setSuFlag(suFlag);
		u.setUname(uname);
		u.setUtime(new Date());
		userDao.addUser(u);
		return  "";
		
	}
}
