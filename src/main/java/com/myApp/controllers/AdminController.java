package com.myApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping("/home")
	public String getAdminUrl()
	{
		System.out.println("admin controller");
		return "adminHome";
	}	
}
