package com.myApp.DAO;

import java.util.ArrayList; 
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
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
			
			sessionFactory.getCurrentSession().saveOrUpdate(customer);
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

	@Transactional
	public List<CustomerEntity> getAllCustomers() {
		return sessionFactory.getCurrentSession().createQuery("from CustomerEntity").list();
	}
	
	@Transactional
	public void deleteCustomer(CustomerEntity customer,List<AuthorityEntity> list)
	{
		deleteCustomerAuthority(list);
		if (customer!=null) {
            this.sessionFactory.getCurrentSession().delete(customer);
        }
	}
	
	@Transactional
	public CustomerEntity getCustomerById(int id)
	{
		String hql = "from CustomerEntity where customerId = "+id;
		CustomerEntity obj = (CustomerEntity) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);
		return obj;
	}
	
	@Transactional
	public void deleteCustomerAuthority(List<AuthorityEntity> list)
	{
		for(AuthorityEntity i:list)
		{
			this.sessionFactory.getCurrentSession().delete(i);;
		}
	}

	@Transactional
	public void updateCustomer(CustomerEntity customer) {
		sessionFactory.getCurrentSession().update(customer);
	}
}
