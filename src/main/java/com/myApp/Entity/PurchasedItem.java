package com.myApp.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purcharsedItem")
public class PurchasedItem {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long purchaseId;
	private String Customername;
	private long productId;
	
	public PurchasedItem() {
	}

	@Override
	public String toString() {
		return "PurchasedItem [purchaseId=" + purchaseId + ", Customername=" + Customername + ", productName="
				+ productId + "]";
	}

	public PurchasedItem(String customername, long productId) {
		this.Customername = customername;
		this.productId = productId;
	}

	public long getPurchaseId() {
		return purchaseId;
	}
	
	public String getCustomername() {
		return Customername;
	}
	
	public long getProductId() {
		return productId;
	}
	
	public void setPurchaseId(long purchaseId) {
		this.purchaseId = purchaseId;
	}
	
	public void setCustomername(String customername) {
		Customername = customername;
	}
	
	public void setProductId(long productId) {
		this.productId = productId;
	}
}
