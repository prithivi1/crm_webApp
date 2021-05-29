package com.myApp.DAO;

import java.sql.Blob;
import java.util.List;

import com.myApp.Entity.ProductEntity;


public interface ProductDAO {
	
	public void addNewProduct(ProductEntity product);
	
	public List<ProductEntity> getAllProducts();
	
	public Blob getPhotoByName(String name);
	
	public void updateProduct(ProductEntity product);
}
