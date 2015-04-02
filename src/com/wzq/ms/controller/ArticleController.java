package com.wzq.ms.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.ArticleDao;
import com.wzq.ms.dataobject.Article;

@Controller
@RequestMapping("/article/")
public class ArticleController {

	@Resource(name="articleDao")
	ArticleDao articleDao;
	
	@RequestMapping("list")
	public @ResponseBody List<Article> getByCid(Integer cid){
		
		List<Article> list = articleDao.getByCid(cid);
		return list;
	}
	
	@RequestMapping("detial")
	public @ResponseBody Article getByAid(Integer Aid){
		return articleDao.getByAid(Aid);
	}
	
	public void add(){
		
	}
}
