package com.wzq.ms.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.wzq.ms.dao.AuthorityDao;
import com.wzq.ms.dao.UserDao;
import com.wzq.ms.dataobject.Authority;


public class AuthorityService {
	
	private AuthorityDao authorityDao;
	private UserDao userDao;
	
	
	
	
	
	public boolean checkAuthority(Integer uid,Integer cid){
		if(uid == null || cid == null){
			return false;
		}
		
		if(userDao.checkAdmin(uid)){
			return true;
		}else if(checkAu(uid,cid)){
			return true;
		}else{
			return false;
		}
	}
	
	
	private boolean checkAu(Integer uid,Integer cid){
		Authority au = new Authority(uid,cid);
		return authorityDao.getAuValue(au) > 0;
	}
	
	private Integer getLoginerId(HttpServletRequest request){
		Cookie[] cookies = request.getCookies();
		Integer uid = null;
	    for(Cookie c:cookies){
	    	if("uid".equals(c.getName())){
	    		uid = Integer.valueOf(c.getValue());
	    		break;
	    	}
	    }
		return uid;
		
	}
	
	

	public AuthorityDao getAuthorityDao() {
		return authorityDao;
	}

	public void setAuthorityDao(AuthorityDao authorityDao) {
		this.authorityDao = authorityDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean isAdmin(Integer uid){
		
		return userDao.checkAdmin(uid);
	}
}
