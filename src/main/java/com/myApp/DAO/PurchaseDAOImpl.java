package com.myApp.DAO;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional; 

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ProductEntity;
import com.myApp.Entity.ProductPicture;
import com.myApp.Entity.PurchasedItem;

@Repository
public class PurchaseDAOImpl implements PurchaseDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void registerNewPurchase(PurchasedItem purchase) {
		sessionFactory.getCurrentSession().save(purchase);
	}
	
	@Transactional
	public List<ProductEntity> getAllUserProducts(String user)
	{
		String hql = "from PurchasedItem where Customername = '"+user+"'";
		List<PurchasedItem> list = (List<PurchasedItem>) sessionFactory.getCurrentSession().createQuery(hql).list();		
		
		List<ProductEntity> obj = new ArrayList<ProductEntity>();
		for(PurchasedItem i:list)
		{
			obj.add(getProductDetailsById(i.getProductId()));
		}
		return obj;
	}
	
	@Transactional
	public ProductEntity getProductDetailsById(long id)
	{
		String hql = "from ProductEntity where productId = '"+id+"'";
		return (ProductEntity) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);		
	}

	@Transactional
	public void addNewInvoice(InvoiceEntity invoice) {
		sessionFactory.getCurrentSession().save(invoice);
	}
	
	@Transactional
	public List<InvoiceEntity> getAllInvoiceByUser(String user)
	{
		String hql = "from InvoiceEntity where username = '"+user+"'";
		List<InvoiceEntity> list = (List<InvoiceEntity>) sessionFactory.getCurrentSession().createQuery(hql).list();		
		return list;
	}

	@Transactional
	public InvoiceEntity getInvoiceById(long id) {
		String hql = "from InvoiceEntity where invoiceId = '"+id+"'";
		InvoiceEntity ob = (InvoiceEntity) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);
		return ob;
	}
	
	@Transactional
	public List<InvoiceEntity> getAllInvoices() {
		String hql = "from InvoiceEntity";
		return (List<InvoiceEntity>) sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
