package com.myApp.Service;

import org.springframework.security.core.userdetails.User;

import com.myApp.DTO.CustomerDTO;
import com.myApp.Entity.CustomerEntity;

public interface CustomerService 
{
	public boolean registerNewCustomer(CustomerDTO customer);
	
}
