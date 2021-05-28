package com.myApp.Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="invoices")
public class InvoiceEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long invoiceId;
	private String invoiceDate;
	private String username;
	private String email;
	private long contact;
	private long productId;
	private String productName;
	private float productCost;

	
	public long getInvoiceId() {
		return invoiceId;
	}
	public String getInvoiceDate() {
		return invoiceDate;
	}
	public String getUsername() {
		return username;
	}
	public String getEmail() {
		return email;
	}
	public long getContact() {
		return contact;
	}
	public long getProductId() {
		return productId;
	}
	public String getProductName() {
		return productName;
	}
	public float getProductCost() {
		return productCost;
	}
	public void setInvoiceId(long invoiceId) {
		this.invoiceId = invoiceId;
	}
	public void setInvoiceDate(String date) {
		this.invoiceDate = date;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public void setProductCost(float productCost) {
		this.productCost = productCost;
	}


	@Override
	public String toString() {
		return "InvoiceEntity [invoiceId=" + invoiceId + ", invoiceDate=" + invoiceDate + ", username=" + username
				+ ", email=" + email + ", contact=" + contact + ", productId=" + productId + ", productName="
				+ productName + ", productCost=" + productCost + "]";
	}
	
	
	
}
