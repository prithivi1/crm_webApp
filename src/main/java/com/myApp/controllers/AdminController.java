package com.myApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.myApp.DTO.CustomerProfileDTO;
import com.myApp.Service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping("/home")
	public String getAdminUrl()
	{
		System.out.println("admin controller");
		return "adminHome";
	}	
	
	@GetMapping("/Customers")
	public String showAllCustomerPage(Model model)
	{
		List<CustomerProfileDTO> list = customerService.getAllCustomers();
		model.addAttribute("customers", list);
		return "viewCustomers";
	}
	
	@GetMapping("/account")
	public String getProfileUpdate(Authentication authentication,Model model)
	{
		String username = authentication.getName().toString();
		CustomerProfileDTO customer = customerService.getCustomerByUserName(username);
		model.addAttribute("customer", customer);
		return "profile";
	}
	
	@PostMapping("/myProfile")
	public String UpdateMyProfile(CustomerProfileDTO customer)
	{
		customerService.updateCustomer(customer);
		return "redirect:/admin/account?success";
	}
	
	
	@GetMapping("/profile")
	public String getCustomerProfile(@RequestParam(required=false,name="username") String username, Model model)
	{
		CustomerProfileDTO customer = customerService.getCustomerByUserName(username);
		model.addAttribute("customer", customer);
		return "CustomerProfile";
	}
	
	@PostMapping("/UpdateProfile")
	public String updateProfile(CustomerProfileDTO customer)
	{
		customerService.updateCustomer(customer);
		return "redirect:/admin/Customers";
	}
	
	
	@GetMapping("/deleteCustomer")
	public RedirectView deleteCustomer(@RequestParam("userId") int id,Model model){
		
		customerService.deleteCustomer(id);
		return new RedirectView("/myApp/admin/Customers");
	}
}
