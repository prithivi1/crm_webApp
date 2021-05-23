package com.myApp.DAO;

import java.util.List; 

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Repository;

import com.myApp.Entity.AuthorityEntity;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public User getUserByName(String username) 
	{
		String hql = "from CustomerEntity where username = '"+username+"'";
		List<User> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	@Transactional
	public List<AuthorityEntity> getUserRoles(String username) {
		String hql = "from AuthorityEntity where username = '"+username+"'";
		List<AuthorityEntity> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		if(list.isEmpty())
		{
			return null;
		}
		return list;
	}

}
