package com.myApp.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;

@Entity
@Table(name = "authority")
public class AuthorityEntity {
	
	@Id
	private String username;
	private String role = "user";
	private boolean enable = true;
	
	public String getUsername() {
		
		return username;
	}
	
	public String getRole() {
		return role;
	}
	
	public boolean isEnable() {
		return enable;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
