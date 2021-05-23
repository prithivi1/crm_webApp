package com.myApp.config;


import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myApp.Service.UserService;

@Service
public class CustomerUserDetailService implements UserDetailsService {

	@Autowired
	private UserService userService;
	
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userService.findByUserName(username);
		
		if(user==null)
		{
			throw new UsernameNotFoundException("Username not found");
		}
		
		return user;
	}

}
