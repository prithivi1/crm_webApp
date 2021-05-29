package com.myApp.Service;

import java.sql.Blob;
import java.util.List;

import com.myApp.DTO.ProductDTO;
import com.myApp.Entity.ProductEntity;

public interface ProductService {
	
	public void updateProduct(ProductDTO product);
	
	public List<ProductDTO> getAllProducts();
	
	public Blob getPhotoByName(String name);
	
	public ProductDTO getProductById(long id);

	public void updateProductDetails(ProductDTO product);
}
