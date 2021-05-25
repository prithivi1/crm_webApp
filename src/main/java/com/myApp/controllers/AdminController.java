package com.myApp.controllers;

import java.util.List; 

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import com.myApp.DTO.CustomerProfileDTO;
import com.myApp.DTO.CustomerRegisterDTO;
import com.myApp.Entity.CustomerEntity;
import com.myApp.Service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping("/home")
	public String getAdminUrl()
	{
		return "adminHome";
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
	
	@GetMapping("/Customers")
	public String showAllCustomerPage(Model model)
	{
		List<CustomerProfileDTO> list = customerService.getAllCustomers();
		model.addAttribute("customers", list);
		return "viewCustomers";
	}
	
	@GetMapping("/addCustomer")
	public String getAddCustomerPage(Model model)
	{
		CustomerRegisterDTO customer = new CustomerRegisterDTO();
		model.addAttribute("customer", customer);
		return "addCustomer";
	}
	
	@PostMapping("/registerCustomer")
	public String registerUser(@Valid @ModelAttribute("customer") CustomerRegisterDTO customerRegisterDTO,BindingResult result)
	{
		System.out.println("register controller");
		
		if(result.hasErrors())
		{
			return "/addCustomer";
		}
			
		if(!customerService.registerNewCustomer(customerRegisterDTO))
		{
			System.out.println("REGISTRATION ERROR");
			return "redirect:/admin/addCustomer?error";
		}
		
		System.out.println("REGISTRATION SUCCESS");
		return "redirect:/admin/addCustomer?register_success";
	}
	
	@GetMapping("/editCustomer")
	public String getCustomerProfile(@RequestParam(required=false,name="username") String username, Model model)
	{
		CustomerProfileDTO customer = customerService.getCustomerByUserName(username);
		model.addAttribute("customer", customer);
		return "editCustomer";
	}
	
	@PostMapping("/UpdateProfile")
	public String updateProfile(CustomerProfileDTO customer)
	{
		customerService.updateCustomer(customer);
		return "redirect:/admin/Customers";
	}
	
	
	@PostMapping("/deleteCustomer")
	public RedirectView deleteCustomer(@RequestParam("userId") int id,Model model){
		
		customerService.deleteCustomer(id);
		return new RedirectView("/myApp/admin/Customers");
	}
}
