package com.wzq.ms.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.User;

@Controller
@RequestMapping("/test/")
public class TestController {

	@Resource(name="userDao")
	private UserDao userDao;
	
	@RequestMapping("test")
	public String test(){
		/*User u=new User();
		u.setUname("testUsername");
		u.setPwd("testUsername");
		System.out.println(userDao.selectUser(u));*/
		return "test";
		
	}
	
	@RequestMapping("json")
	public @ResponseBody User t(){
		User u=new User();
		u.setUname("2");
		u.setPwd("2");
		System.out.println(u);
		return u;
	}
	
	
	@RequestMapping("index")
	public String index(){
		
		return "index";
		
	}
	
	@RequestMapping("user")
	public String user(){
		
		return "user";
		
	}
	
	@RequestMapping("login")
	public String login(HttpServletResponse response,String id,String name){
		System.out.println(id);
		System.out.println("name = "+name);
		return "login";
		
	}
	
	@RequestMapping("addcookie")
	public @ResponseBody String addCookie(HttpServletResponse response,String name,int time){
		 
         Cookie cookie=new Cookie("loginName",name);
         cookie.setPath("/");
         cookie.setMaxAge(time);
         response.addCookie(cookie);
        
		return "add";
		
	}
	
	@RequestMapping("getcookie")
	public @ResponseBody String getCookie(HttpServletRequest request){
		
		Cookie[] cookies = request.getCookies();
	    for(Cookie c:cookies){
	    	
	    	if("loginName".equals(c.getName()) && c.getMaxAge()>0){
	    		System.out.println(c.getName()+":"+c.getValue()+" login ok");
	    	}
	    	System.out.println(c.getMaxAge());
	    	//c.setSecure(flag);
	    }
		return "get";
	    
	}
	
	@RequestMapping("delcookie")
	public @ResponseBody String delCookie(HttpServletRequest request,HttpServletResponse response){
		
		Cookie[] cookies = request.getCookies();
	    for(Cookie c:cookies){
	    	if("loginName".equals(c.getName())){
	    		c.setMaxAge(0);
	    		response.addCookie(c);
	    		System.out.println(c.getMaxAge()+":del"+c.getValue());
	    	}
	    	System.out.println(c.getMaxAge()+":del"+c.getValue());
	    }
		return "del";
	    
	}
	
}
