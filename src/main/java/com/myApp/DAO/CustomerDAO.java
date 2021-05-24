package com.myApp.DAO;

import java.util.List;

import org.springframework.security.core.userdetails.User;

import com.myApp.Entity.AuthorityEntity;
import com.myApp.Entity.CustomerEntity;

public interface CustomerDAO {
	
	public boolean registerNewCustomer(CustomerEntity customer);

	public CustomerEntity getCustomerDetails(String username);

	public List<CustomerEntity> getAllCustomers();
	
	public void deleteCustomer(CustomerEntity customer,List<AuthorityEntity> list);
	
	public CustomerEntity getCustomerById(int id);
	
	public void updateCustomer(CustomerEntity customer);
	

}
