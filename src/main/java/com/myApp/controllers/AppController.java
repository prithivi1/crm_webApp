package com.myApp.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myApp.DTO.CustomerDTO;
import com.myApp.Service.CustomerService;

@Controller
public class AppController {
	
	@Autowired
	private CustomerService customerService;
	
	@ResponseBody
	@RequestMapping("/home")
	public String getRegisterPage()
	{
		return "welcome";
	}	
	
	@GetMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	@GetMapping("/signUp")
	public String getSignUpPage(@ModelAttribute("customer") CustomerDTO customerDTO)
	{
		return "signUp";
	}
	
	@PostMapping("/register")
	public String registerUser(@Valid @ModelAttribute("customer") CustomerDTO customerDTO,BindingResult result)
	{
		if(result.hasErrors() || !customerService.registerNewCustomer(customerDTO))
		{
			return "/signUp";
		}
		return "redirect:login";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/login?logout";
    }
	
}
