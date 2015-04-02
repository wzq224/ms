package com.wzq.ms.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.CategoryDao;
import com.wzq.ms.dataobject.Category;


@Controller
@RequestMapping("/cate/")
public class CategoryController {
	
	@Resource(name = "categoryDao")
	CategoryDao cateDao;
	
	@RequestMapping("page")
	public String page(){
		return "cate";
	}
	
	@RequestMapping("all")
	public @ResponseBody List<Category> getAll(){
		return cateDao.getAllCategories();
	}
	
	
	@RequestMapping("add")
	public String add(String cname,Integer uid){
		Category cate = new Category();
		cate.setUid(uid);
		cate.setCname(cname);
		cate.setCtime(new Date());
		cateDao.addCategory(cate);
		
		return  "redirect:/cate/page";
	}
	
	
	
}

