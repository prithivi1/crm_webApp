package com.myApp.Service;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myApp.DAO.ProductDAO;
import com.myApp.DAO.PurchaseDAO;
import com.myApp.DTO.ProductDTO;
import com.myApp.Entity.ProductEntity;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private PurchaseDAO purchaseDAO;
	
	
	public void updateProduct(ProductDTO product) {
		ProductEntity obj = new ProductEntity();
		obj.setName(product.getName());
		obj.setCost(product.getCost());
		obj.setDiscription(product.getDiscription());
		obj.setPicture(product.getPicture());
		
		productDAO.addNewProduct(obj);
	}

	public List<ProductDTO> getAllProducts() {
		
		List<ProductEntity> list = productDAO.getAllProducts();
		List<ProductDTO> obj = new ArrayList<ProductDTO>();
		for(ProductEntity i:list)
		{
			obj.add(convertToDTO(i));
		}
		return obj;
	}
	
	public ProductDTO convertToDTO(ProductEntity product)
	{
		ProductDTO ob = new ProductDTO();
		ob.setProductId(product.getProductId());
		ob.setName(product.getName());
		ob.setCost(product.getCost());
		ob.setDiscription(product.getDiscription());
		return ob;
	}

	public Blob getPhotoByName(String name) {
		return productDAO.getPhotoByName(name);
	}

	public ProductDTO getProductById(long id) {
		ProductEntity ob = purchaseDAO.getProductDetailsById(id);
		return convertToDTO(ob);
	}

	public void updateProductDetails(ProductDTO product) {
		ProductEntity obj = new ProductEntity();
		obj.setProductId(product.getProductId());
		obj.setName(product.getName());
		obj.setCost(product.getCost());
		obj.setDiscription(product.getDiscription());
		obj.setPicture(product.getPicture());
		
		productDAO.updateProduct(obj);
	}

}
