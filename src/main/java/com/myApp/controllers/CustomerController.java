package com.myApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myApp.DTO.ProductDTO;
import com.myApp.Service.ProductService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/home")
	public String getCustomerHomePage(Model model)
	{
		List<ProductDTO> product = productService.getAllProducts();
		model.addAttribute("product", product);
		return "customerHome";
	}	
	
	@RequestMapping("/myProduct")
	public String getProductPage(Model model)
	{
		return "customerProduct";
	}
	
	@RequestMapping("/service")
	public String getServicePage(Model model)
	{
		return "customerService";
	}
	
	@RequestMapping("/invoice")
	public String getInvoicePage(Model model)
	{
		return "customerInvoice";
	}
	
	
}
