package com.myApp.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import com.myApp.DAO.CustomerDAO;
import com.myApp.DAO.UserDAO;
import com.myApp.Entity.AuthorityEntity;
import com.myApp.Entity.CustomerEntity;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private CustomerDAO customerDao;
	
	@Autowired
	private UserDAO userDAO;
	
	public User findByUserName(String username) {
		CustomerEntity customer = customerDao.getCustomerDetails(username);
		if(customer!=null)
		{
			List<GrantedAuthority> list = getGrantedAuthorities(username);
			User user = new User(customer.getUsername(),customer.getPassword(),list);
			return user;
		}
		return null;
	}
	
	private List<GrantedAuthority> getGrantedAuthorities(String username){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        List<AuthorityEntity> list = userDAO.getUserRoles(username);
        for(AuthorityEntity i:list)
        {
        	authorities.add(new SimpleGrantedAuthority("ROLE_"+i.getRole()));
        }
        return authorities;
    }
}
