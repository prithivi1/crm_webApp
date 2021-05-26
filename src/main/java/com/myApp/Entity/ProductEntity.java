package com.myApp.Entity;


import javax.persistence.Entity; 
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="products")
public class ProductEntity {
	
	@Id
	private String name;
	private float cost;
	private String discription;
	private byte[] picture;
	
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
