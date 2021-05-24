package com.myApp.Service;

import java.util.List; 

import org.springframework.security.core.userdetails.User;

import com.myApp.DTO.CustomerProfileDTO;
import com.myApp.DTO.CustomerRegisterDTO;
import com.myApp.Entity.AuthorityEntity;
import com.myApp.Entity.CustomerEntity;

public interface CustomerService 
{
	public boolean registerNewCustomer(CustomerRegisterDTO customer);
	
	public List<CustomerProfileDTO> getAllCustomers();
	
	public CustomerProfileDTO getCustomerById(int id);
    
    public void deleteCustomer(int customerId);

    public void updateCustomer(CustomerProfileDTO customer);
    
    public CustomerProfileDTO getCustomerByUserName(String username);
}
