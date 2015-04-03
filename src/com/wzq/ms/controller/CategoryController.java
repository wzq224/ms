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
import com.wzq.ms.service.AuthorityService;


@Controller
@RequestMapping("/cate/")
public class CategoryController {
	
	@Resource(name = "categoryDao")
	CategoryDao cateDao;
	
	@Resource(name = "authorityService")
	AuthorityService authorityService;
	
	@RequestMapping("all")
	public String getAll(Integer uid,Model m){
		if(authorityService.isAdmin(uid)){
			m.addAttribute("cates", cateDao.getAllCategories());
		}else{
			m.addAttribute("cates", cateDao.getCategoriesByAu(uid));
		}
		return "cate";
	}
	
	
	@RequestMapping("all2")
	public @ResponseBody List<Category> getAll2(Model m){
		
		return cateDao.getAllCategories();
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

