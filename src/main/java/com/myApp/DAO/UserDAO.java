package com.myApp.DAO;

import java.util.List; 

import org.springframework.security.core.userdetails.User;

import com.myApp.Entity.AuthorityEntity;

public interface UserDAO {

	public User getUserByName(String username);
	
	public List<AuthorityEntity> getUserRoles(String username);
}
