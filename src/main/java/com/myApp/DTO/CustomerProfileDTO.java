package com.myApp.DTO;

import javax.persistence.Id;

public class CustomerProfileDTO {

	private int customerId;
	private String username;
	private String companyName;
	private String password;
	private String email;
	private String address;
	private String city;
	private String state;
	private Long mobile;
	private String website;
	
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
	
	public String getCompanyName() {
		return companyName;
	}
	public String getCity() {
		return city;
	}
	public String getState() {
		return state;
	}
	public String getWebsite() {
		return website;
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

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	
}
