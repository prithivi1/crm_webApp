package com.myApp.Service;

import java.util.ArrayList; 
import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.myApp.DAO.CustomerDAO;
import com.myApp.DAO.UserDAO;
import com.myApp.DTO.*;
import com.myApp.Entity.AuthorityEntity;
import com.myApp.Entity.CustomerEntity;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private PasswordEncoder password;
	
	public boolean registerNewCustomer(CustomerRegisterDTO customer)
	{
		if(checkPasswordMatch(customer.getPassword(), customer.getConfirm_password()) && checkIfExist(customer.getUsername()))
		{
			System.out.println("REGISTER SERVICE");
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

	public List<CustomerProfileDTO> getAllCustomers() {
		
		List<CustomerEntity> list = customerDAO.getAllCustomers();
		List<CustomerProfileDTO> ans = new ArrayList<CustomerProfileDTO>();
		
		for(CustomerEntity i : list)
		{
			ans.add(convertToDTO(i));
		}
		
		return ans;
	}
	
	public CustomerProfileDTO getCustomerById(int id) {
		return convertToDTO(customerDAO.getCustomerById(id));
	}
	
	public void deleteCustomer(int customerId) {
		CustomerEntity customer = customerDAO.getCustomerById(customerId);
		List<AuthorityEntity> authority = userDAO.getUserRoles(customer.getUsername());
		customerDAO.deleteCustomer(customer,authority);
	}

	public CustomerProfileDTO convertToDTO(CustomerEntity customer)
	{
		CustomerProfileDTO obj = new CustomerProfileDTO();
		obj.setCustomerId(customer.getCustomerId());
		obj.setUsername(customer.getUsername());
		obj.setCompanyName(customer.getCompanyName());
		obj.setPassword(customer.getPassword());
		obj.setEmail(customer.getEmail());
		obj.setAddress(customer.getAddress());
		obj.setCity(customer.getCity());
		obj.setState(customer.getState());
		obj.setMobile(customer.getMobile());
		obj.setWebsite(customer.getWebsite());
		
		return obj;
	}
	
	public CustomerEntity convertToEntity(CustomerProfileDTO customer)
	{
		CustomerEntity obj = new CustomerEntity();
		obj.setCustomerId(customer.getCustomerId());
		obj.setUsername(customer.getUsername());
		obj.setCompanyName(customer.getCompanyName());
		obj.setPassword(customer.getPassword());
		obj.setEmail(customer.getEmail());
		obj.setAddress(customer.getAddress());
		obj.setCity(customer.getCity());
		obj.setState(customer.getState());
		obj.setMobile(customer.getMobile());
		obj.setWebsite(customer.getWebsite());
		
		return obj;
	}

	public void updateCustomer(CustomerProfileDTO customer) {
		CustomerEntity temp = customerDAO.getCustomerDetails(customer.getUsername());
		customer.setPassword(temp.getPassword());
		customer.setCustomerId(temp.getCustomerId());
		CustomerEntity obj = convertToEntity(customer);
		System.out.println("service=====>"+obj.getCustomerId());
		customerDAO.updateCustomer(obj);
	}

	public CustomerProfileDTO getCustomerByUserName(String username) {
		return convertToDTO(customerDAO.getCustomerDetails(username));
	}
	
}
