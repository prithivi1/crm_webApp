package com.myApp.DTO;

import java.sql.Blob;

import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;


public class ProductDTO {
	
//	@NotBlank(message = "please enter product name")
	private String name;
//	@NotBlank(message = "please enter product cost")
	private float cost;
	private String discription;
	private byte[] picture;
	
	public ProductDTO(String name, float cost, String discription, byte[] picture) {
		this.name = name;
		this.cost = cost;
		this.discription = discription;
		this.picture = picture;
	}
	
	public ProductDTO() {
	}

	public String getName() {
		return name;
	}
	public float getCost() {
		return cost;
	}
	public String getDiscription() {
		return discription;
	}
	public byte[] getPicture() {
		return picture;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public void setPicture(byte[] picture) {
		this.picture = picture;
	}
}
