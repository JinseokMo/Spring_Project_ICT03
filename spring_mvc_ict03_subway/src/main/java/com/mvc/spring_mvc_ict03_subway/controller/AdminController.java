package com.mvc.spring_mvc_ict03_subway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/")
	public String main() {
		return "index";
	}
}
