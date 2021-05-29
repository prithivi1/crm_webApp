package com.myApp.Service;

import java.util.List;

import com.myApp.DTO.InvoiceDTO;
import com.myApp.DTO.PurchasedItemDTO;
import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ProductEntity;

public interface PurchaseService {
	
	public void registerNewPurchase(PurchasedItemDTO purchase);
	
	public List<ProductEntity> getAllUserProducts(String user);
	
	public List<InvoiceEntity> getAllInvoiceByUser(String user);
	
	public InvoiceEntity getInvoiceById(long id);
	
	
	public List<InvoiceEntity> getAllInvoices();
}
