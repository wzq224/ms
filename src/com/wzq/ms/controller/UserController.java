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

import com.wzq.ms.dao.AuthorityDao;
import com.wzq.ms.dao.CategoryDao;
import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.Authority;
import com.wzq.ms.dataobject.Category;
import com.wzq.ms.dataobject.User;

@RequestMapping("/user/")
@Controller
public class UserController {

	@Resource(name = "userDao")
	private UserDao userDao;
	
	@Resource(name = "authorityDao")
	private AuthorityDao authorityDao;
	
	@Resource(name="categoryDao")
	private CategoryDao categoryDao;
	
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
		//u.setPwd(MD5.md5Edcode(pwd));
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
	
	@RequestMapping("chgType")
	public String chgType (Integer uid,boolean suFlag){
		User u = new User();
		u.setUid(uid);
		u.setSuFlag(suFlag);
		userDao.chgType(u);
		return "redirect:/i/i";
	}
	
	@RequestMapping("allau")
	public String getAuDetial(Integer uid,HttpServletRequest request){
		List<Authority> auList = authorityDao.getAllAu(uid);
		List<Category> allList = categoryDao.getAllCategories();
		for(Authority au:auList){
			for(Category c:allList){
				if(au.getCid() == c.getCid()){
					allList.remove(c);
					break;
				}
			}
		}
		request.setAttribute("uauList", allList);
		request.setAttribute("auList", auList);
		request.setAttribute("uid", uid);
		
		return "auindex";
	}
	
	@RequestMapping("chgAuList")
	public String chgAuList(String param,Integer flag,Integer uid){
		String[] cidArr = param.split(",");
		
		for(String cid:cidArr){
			Authority au = new Authority(Integer.valueOf(cid),uid,flag);
			if(flag == 1 && authorityDao.getAuValue(au) == null){
				authorityDao.addAuVAlue(au);
			}else{
				authorityDao.chgAuVAlue(au);
			}
			
		}
		
		return "redirect:/user/allau?uid="+uid;
	}
	
}
