package com.myApp.Service;

import java.text.DateFormat; 
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myApp.DAO.PurchaseDAO;
import com.myApp.DTO.CustomerProfileDTO;
import com.myApp.DTO.InvoiceDTO;
import com.myApp.DTO.PurchasedItemDTO;
import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ProductEntity;
import com.myApp.Entity.PurchasedItem;

@Service
public class PurchaseServiceImpl implements PurchaseService {

	@Autowired
	private PurchaseDAO purchaseDAO;
	
	@Autowired
	private CustomerService customerService;
	
	public void registerNewPurchase(PurchasedItemDTO purchase) {
		
		PurchasedItem obj = new PurchasedItem(purchase.getCustomername(),purchase.getProductId());
		purchaseDAO.registerNewPurchase(obj);
		
		CustomerProfileDTO customer = customerService.getCustomerByUserName(obj.getCustomername());
		ProductEntity product = purchaseDAO.getProductDetailsById(purchase.getProductId());
		
		InvoiceEntity invoice = createInvoice(customer, product);
		purchaseDAO.addNewInvoice(invoice);
	}
	
	public List<ProductEntity> getAllUserProducts(String user)
	{
		return purchaseDAO.getAllUserProducts(user);
	}

	public InvoiceEntity createInvoice(CustomerProfileDTO customer,ProductEntity product)
	{
	
		Date date = new Date();
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");  
		String strDate = dateFormat.format(date);  
		
		InvoiceEntity invoice = new InvoiceEntity();
		
		invoice.setInvoiceDate(strDate);
		invoice.setUsername(customer.getUsername());
		invoice.setEmail(customer.getEmail());
		if(customer.getMobile()!=null)
		{
			invoice.setContact(customer.getMobile());
		}
		invoice.setProductId(product.getProductId());
		invoice.setProductName(product.getName());
		invoice.setProductCost(product.getCost());
		return invoice;
	}
	
	public List<InvoiceEntity> getAllInvoiceByUser(String user)
	{
		List<InvoiceEntity> list = purchaseDAO.getAllInvoiceByUser(user);
		return list;
	}
	
	public InvoiceDTO convertToDTO(InvoiceEntity invoice)
	{
		InvoiceDTO ob = new InvoiceDTO();
		ob.setInvoiceId(new Long(invoice.getInvoiceId()).longValue());
		ob.setInvoiceDate(invoice.getInvoiceDate());
		ob.setUsername(invoice.getUsername());
		ob.setEmail(invoice.getEmail());
		ob.setContact(invoice.getContact());
		ob.setInvoiceId(invoice.getProductId());
		ob.setProductName(invoice.getProductName());
		ob.setProductCost(invoice.getProductCost());
		
		return ob;
	}

	public InvoiceEntity getInvoiceById(long id) {
		return purchaseDAO.getInvoiceById(id);
	}

	public List<InvoiceEntity> getAllInvoices() {
		return purchaseDAO.getAllInvoices();
	}
	
}

