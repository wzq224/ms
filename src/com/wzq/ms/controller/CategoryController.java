package com.wzq.ms.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzq.ms.dao.CategoryDao;
import com.wzq.ms.dataobject.Category;


@Controller
@RequestMapping("/cate/")
public class CategoryController {
	
	@Resource(name = "categoryDao")
	CategoryDao cateDao;
	
	@RequestMapping("all")
	public String getAll(Model m){
		m.addAttribute("cates", cateDao.getAllCategories());
		
		return "cate";
	}
	
	
	@RequestMapping("add")
	public @ResponseBody String add(String cname,Integer uid){
		Category cate = new Category();
		cate.setUid(uid);
		cate.setCname(cname);
		cate.setCtime(new Date());
		cateDao.addCategory(cate);
		return  "";
	}
	
	
	
}

