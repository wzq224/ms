package com.wzq.ms.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String getByCid(Integer cid,Model m){
		m.addAttribute("articles",articleDao.getByCid(cid));
		return "articles";
	}
	
	@RequestMapping("all")
	public String getAll(Model m){
		m.addAttribute("articles",articleDao.getAll());
		return "articles";
	}
	
	@RequestMapping("new")
	public String newPage(){
		return "newarticle";
	}
	
	@RequestMapping("detial")
	public @ResponseBody Article getByAid(Integer Aid){
		return articleDao.getByAid(Aid);
	}
	
	public void add(){
		
	}
}
