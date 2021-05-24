package com.myApp.DTO;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class CustomerRegisterDTO {
	
	@NotBlank(message = "please enter username")
	private String username;
	
	@NotBlank(message = "please enter email")
	@Email(message = "please provide a valid email")
	private String email;
	
	@NotBlank(message = "please enter password")
	private String password;
	
	@NotBlank(message = "please enter confirm password")
	private String confirm_password;
	
	@AssertTrue(message="please agree to our terms&condition")
	private boolean terms;
	
	public String getUsername() {
		return username;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public boolean getTerms() {
		return terms;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public void setTerms(boolean terms) {
		this.terms = terms;
	}
	
}
