package com.myApp.DAO;

import java.util.List;

import com.myApp.DTO.PurchasedItemDTO;
import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ProductEntity;
import com.myApp.Entity.PurchasedItem;

public interface PurchaseDAO {
	
	public void registerNewPurchase(PurchasedItem purchase);
	
	public List<ProductEntity> getAllUserProducts(String user);
	
	public ProductEntity getProductDetailsById(long id);
	
	public void addNewInvoice(InvoiceEntity invoice);
	
	public List<InvoiceEntity> getAllInvoiceByUser(String user);
	
	public InvoiceEntity getInvoiceById(long id);
	
	public List<InvoiceEntity> getAllInvoices();

}
