package com.myApp.controllers;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List; 

import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.*;
import org.springframework.security.authentication.AuthenticationTrustResolver;

import com.myApp.DTO.CustomerRegisterDTO;
import com.myApp.DTO.ProductDTO;
import com.myApp.Entity.InvoiceEntity;
import com.myApp.Service.CustomerService;
import com.myApp.Service.ProductService;
import com.myApp.Service.PurchaseService;

@Controller
@MultipartConfig
public class AppController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private PurchaseService purchaseService;
	
	@Autowired
    AuthenticationTrustResolver authenticationTrustResolver;
	
	@GetMapping("/login")
	public String getLoginPage()
	{
		if(isCurrentAuthenticationAnonymous())
		{
			return "login";
		}
		
		return "redirect:/logout";
	}
	
	@GetMapping("/signUp")
	public String getSignUpPage(@ModelAttribute("customer") CustomerRegisterDTO customerRegisterDTO)
	{
		return "signUp";
	}
	
	@PostMapping("/register")
	public String registerUser(@Valid @ModelAttribute("customer") CustomerRegisterDTO customerRegisterDTO,BindingResult result)
	{
		if(result.hasErrors())
		{
			return "/signUp";
		}
		
		if(!customerService.registerNewCustomer(customerRegisterDTO))
		{
			return "redirect:/signUp?error";
		}
		
		return "redirect:/login?register_success";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/login?logout";
    }
	
	private boolean isCurrentAuthenticationAnonymous() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }
	
	@RequestMapping(value = "/getPhoto/{name}")
	public void getStudentPhoto(HttpServletResponse response, @PathVariable("name") String name) throws Exception {
		System.out.println(name);
		response.setContentType("image/jpeg");
		Blob ph = productService.getPhotoByName(name);
		System.out.println(ph);
		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
	}
	
	@GetMapping("/invoice/{invoiceId}")
	public String getInvoicePage(@PathVariable("invoiceId") long invoiceId,Model model)
	{
		InvoiceEntity invoice = purchaseService.getInvoiceById(invoiceId);
		model.addAttribute("invoice",invoice);
		return "invoicePage";
	}
	
}
