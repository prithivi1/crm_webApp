package com.myApp.DTO;

public class PurchasedItemDTO {
	
	private long purchaseId;
	private String Customername;
	private long productId;
	
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
