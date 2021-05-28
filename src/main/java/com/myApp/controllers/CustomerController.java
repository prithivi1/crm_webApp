package com.myApp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myApp.DAO.CustomerDAO;
import com.myApp.DTO.CustomerProfileDTO;
import com.myApp.DTO.InvoiceDTO;
import com.myApp.DTO.ProductDTO;
import com.myApp.DTO.PurchasedItemDTO;
import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ProductEntity;
import com.myApp.Entity.ServiceEntity;
import com.myApp.Service.CustomerService;
import com.myApp.Service.ProductService;
import com.myApp.Service.PurchaseService;
import com.myApp.Service.TicketService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private PurchaseService purchaseService;
	
	@Autowired
	private TicketService ticketService;
	
	
	@RequestMapping("/home")
	public String getCustomerHomePage(Model model)
	{
		List<ProductDTO> product = productService.getAllProducts();
		model.addAttribute("product", product);
		return "customerHome";
	}	
	
	@RequestMapping("/myProduct")
	public String getProductPage(Authentication authentication,Model model)
	{
		String user = authentication.getName().toString();
		List<ProductEntity> list = purchaseService.getAllUserProducts(user);
		model.addAttribute("product", list);
		return "customerProduct";
	}
	
	@GetMapping("/service")
	public String getServicePage(Authentication authentication,Model model)
	{
		String user = authentication.getName().toString();
		CustomerProfileDTO customer = customerService.getCustomerByUserName(user);
		List<ProductDTO> product = productService.getAllProducts();
		ServiceEntity service = new ServiceEntity();
		service.setCustomerName(customer.getUsername());
		service.setCustomerEmail(customer.getEmail());
		model.addAttribute("service", service);
		model.addAttribute("product", product);
		return "customerService";
	}
	
	@RequestMapping("/invoice")
	public String getInvoicePage(Authentication authentication,Model model)
	{
		String user = authentication.getName().toString();
		List<InvoiceEntity> list = purchaseService.getAllInvoiceByUser(user);
		model.addAttribute("invoice", list);
		return "customerInvoice";
	}
	
	
	@ResponseBody
	@PostMapping(value = "/buy/{productId}")
	public String buyProduct(Authentication authentication,@PathVariable("productId") long productId)
	{
		String username = authentication.getName().toString();
		
		PurchasedItemDTO obj = new PurchasedItemDTO();
		obj.setCustomername(username);
		obj.setProductId(productId);
		purchaseService.registerNewPurchase(obj);
		
		return "purchase success";
	}
	
	
	@PostMapping("/postService")
	public String addServiceRequest(ServiceEntity service)
	{
		ticketService.addNewTicket(service);
		return "redirect:/customer/service?success"; 
	}
	
	@GetMapping("/pending")
	public String getPendingRequest(Authentication authentication,Model model)
	{
		String user = authentication.getName().toString();
		List<ServiceEntity> list = ticketService.getAllServiceByUser(user);
		model.addAttribute("ticket", list);
		return "pendingRequest";
	}
	
	@GetMapping("/resolved")
	public String getResolvedRequest(Authentication authentication,Model model)
	{
		String user = authentication.getName().toString();
		List<ServiceEntity> list = ticketService.getAllServiceByUser(user);
		model.addAttribute("ticket", list);
		return "resolvedTickets";
	}
	
	
	@GetMapping("/account")
	public String getProfileUpdate(Authentication authentication,Model model)
	{
		String username = authentication.getName().toString();
		CustomerProfileDTO customer = customerService.getCustomerByUserName(username);
		model.addAttribute("customer", customer);
		return "customerProfile";
	}
	
	@PostMapping("/profile")
	public String UpdateMyProfile(CustomerProfileDTO customer)
	{
		customerService.updateCustomer(customer);
		return "redirect:/customer/account?success";
	}
	
}
