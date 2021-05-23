package com.myApp.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "authority")
public class AuthorityEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	private String username;
	@NotNull
	private String role = "user";
	
	public String getUsername() {
		
		return username;
	}
	
	public String getRole() {
		return role;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
	
	
}
