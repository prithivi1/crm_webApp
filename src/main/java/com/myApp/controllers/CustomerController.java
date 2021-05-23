package com.myApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@ResponseBody
	@RequestMapping("/home")
	public String getCustomerHomePage()
	{
		return "WELCOME CUSTOMER";
	}	
	
}
