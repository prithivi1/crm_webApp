package com.myApp.Service;

import java.util.List;

import org.springframework.security.core.userdetails.User;

public interface UserService {

	User findByUserName(String username);

}
