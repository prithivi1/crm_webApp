package com.myApp.DAO;

import java.sql.Blob;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myApp.Entity.CustomerEntity;
import com.myApp.Entity.ProductEntity;
import com.myApp.Entity.ProductPicture;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addNewProduct(ProductEntity product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	
	@Transactional
	public List<ProductEntity> getAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from ProductEntity").list();
	}

	@Transactional
	public Blob getPhotoByName(String name) {
		String hql = "from ProductPicture where name = '"+name+"'";
		ProductPicture list = (ProductPicture) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);		
		Blob obj = list.getPicture();
		return obj;
	}
	
	@Transactional
	public void updateProduct(ProductEntity product)
	{
		sessionFactory.getCurrentSession().update(product);
	}
}
