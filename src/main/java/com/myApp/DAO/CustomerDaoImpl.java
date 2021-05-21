package com.myApp.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myApp.Entity.AuthorityEntity;
import com.myApp.Entity.CustomerEntity;

@Repository
public class CustomerDaoImpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public boolean registerNewCustomer(CustomerEntity customer) {
		
		try
		{
			AuthorityEntity authorityEntity = new AuthorityEntity();
			authorityEntity.setUsername(customer.getUsername());
			
			sessionFactory.getCurrentSession().save(customer);
			sessionFactory.getCurrentSession().save(authorityEntity);
		}
		catch (Exception e)
		{
			System.out.println("exception in register "+e.getMessage());
			return false;
		}
		
		return true;
	}

	@Transactional
	public CustomerEntity getCustomerDetails(String username)
	{
		String hql = "from CustomerEntity where username = '"+username+"'";
		List<CustomerEntity> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}
}
