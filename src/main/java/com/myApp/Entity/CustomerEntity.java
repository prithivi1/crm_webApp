package com.myApp.Entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;


@Entity
@Table(name = "customers")
public class CustomerEntity implements Serializable {
	
	private int customerId;
	@Id
	private String username;
	private String password;
	private String email;
	private String address;
	private Long mobile;
	
	public int getCustomerId() {
		return customerId;
	}
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public Long getMobile() {
		return mobile;
	}
	

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

}
