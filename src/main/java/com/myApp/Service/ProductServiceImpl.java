package com.myApp.Service;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myApp.DAO.ProductDAO;
import com.myApp.DTO.ProductDTO;
import com.myApp.Entity.ProductEntity;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
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
		ob.setName(product.getName());
		ob.setCost(product.getCost());
		ob.setDiscription(product.getDiscription());
//		ob.setPicture(product.getPicture());
		return ob;
	}

	public Blob getPhotoByName(String name) {
		return productDAO.getPhotoByName(name);
	}

}
