package com.myApp.Entity;


import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="products")
public class ProductEntity {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long productId;
	private String name;
	private float cost;
	private String discription;
	private byte[] picture;
	

	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
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
	
	@Override
	public String toString() {
		return "ProductEntity [productId=" + productId + ", name=" + name + ", cost=" + cost + ", discription="
				+ discription + ", picture=" + Arrays.toString(picture) + "]";
	}
	
}
