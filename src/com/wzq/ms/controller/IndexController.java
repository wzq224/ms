package com.wzq.ms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/i/")
public class IndexController {
	
	@RequestMapping("i")
	public String index(){
		System.out.print("index");
		return "index";
	}
}
