package com.myApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.myApp.DAO.CustomerDAO;
import com.myApp.DTO.CustomerDTO;
import com.myApp.Entity.CustomerEntity;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Autowired
	private PasswordEncoder password;
	
	public boolean registerNewCustomer(CustomerDTO customer)
	{
		if(checkPasswordMatch(customer.getPassword(), customer.getConfirm_password()) && checkIfExist(customer.getUsername()))
		{
			CustomerEntity customerEntity = new CustomerEntity();
			customerEntity.setUsername(customer.getUsername());
			customerEntity.setEmail(customer.getEmail());
			customerEntity.setPassword(password.encode(customer.getPassword()));
			
			return customerDAO.registerNewCustomer(customerEntity);
		}
		return false;
	}
	
	public boolean checkIfExist(String username)
	{
		CustomerEntity customer = customerDAO.getCustomerDetails(username);
		return customer==null;
	}
	
	public boolean checkPasswordMatch(String password,String confirmPassword)
	{
		return password.equals(confirmPassword);
	}

}
