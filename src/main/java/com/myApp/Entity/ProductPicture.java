package com.myApp.Entity;

import java.sql.Blob;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class ProductPicture {
	
	@Id
	private String name;
	private float cost;
	private String discription;
	private Blob picture;
	public String getName() {
		return name;
	}
	public float getCost() {
		return cost;
	}
	public String getDiscription() {
		return discription;
	}
	public Blob getPicture() {
		return picture;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCost(float id) {
		this.cost = id;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public void setPicture(Blob picture) {
		this.picture = picture;
	}
	
	
	
}
