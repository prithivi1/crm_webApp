package com.myApp.DAO;

import org.springframework.security.core.userdetails.User;

import com.myApp.Entity.CustomerEntity;

public interface CustomerDAO {
	
	public boolean registerNewCustomer(CustomerEntity customer);

	public CustomerEntity getCustomerDetails(String username);

}
