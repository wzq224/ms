package com.wzq.ms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wzq.ms.dao.CategoryDao;


@Controller
@RequestMapping("/cate/")
public class CategoryController {
	
	@Resource(name = "categoryDao")
	CategoryDao cateDao;
	
	@RequestMapping("page")
	public String page(){
		return "cate";
	}
}

