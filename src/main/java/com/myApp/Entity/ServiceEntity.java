package com.myApp.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="service")
public class ServiceEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long serviceId;
	private String customerName;
	private String customerEmail;
	private String item;
	private String description;
	private boolean status;
	
	public long getServiceId() {
		return serviceId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public String getItem() {
		return item;
	}
	public String getDescription() {
		return description;
	}
	public boolean isStatus() {
		return status;
	}
	public void setServiceId(long serviceId) {
		this.serviceId = serviceId;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
}
