package com.myApp.Service;

import org.springframework.security.core.userdetails.User;

import com.myApp.DTO.CustomerDTO;

public interface CustomerService 
{
	public boolean registerNewCustomer(CustomerDTO customer);
}
