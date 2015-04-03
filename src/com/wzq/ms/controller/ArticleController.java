package com.wzq.ms.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.ArticleDao;
import com.wzq.ms.dao.CategoryDao;
import com.wzq.ms.dataobject.Article;

@Controller
@RequestMapping("/article/")
public class ArticleController {

	@Resource(name="articleDao")
	ArticleDao articleDao;
	
	@Resource(name="categoryDao")
	CategoryDao cateDao;
	
	@RequestMapping("list")
	public String getByCid(Integer cid,Model m){
		m.addAttribute("articles",articleDao.getByCid(cid));
		m.addAttribute("cname", cateDao.getCategoryByCid(cid).getCname());
		return "articles";
	}
	
	@RequestMapping("all")
	public String getAll(Model m){
		m.addAttribute("articles",articleDao.getAll());
		m.addAttribute("cname", "all ");
		return "articles";
	}
	
	@RequestMapping("all2")
	public @ResponseBody List<Article> getAll2(Model m){
	
		return articleDao.getAll();
	}
	
	@RequestMapping("new")
	public String newPage(Model m){
		m.addAttribute("cates", cateDao.getAllCategories());
		return "newarticle";
	}
	
	@RequestMapping("add")
	public @ResponseBody String add(Integer uid,String atitle,String acontent,Integer cid){
		Article article = new Article();
		article.setUid(uid);
		article.setCid(cid);
		article.setAcontent(acontent);
		article.setAtime(new Date());
		article.setAtitle(atitle);
		articleDao.addArticle(article);
		return "add";
	}
	
	@RequestMapping("detial")
	public String getByAid(Integer aid,Model m){
		m.addAttribute("article", articleDao.getByAid(aid));
		return "detial";
	}
	
}
