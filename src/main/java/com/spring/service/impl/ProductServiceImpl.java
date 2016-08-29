package com.spring.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.Product;
import com.spring.domain.repository.ProductDAO;
import com.spring.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	@Transactional
	public List<Product> getAllProducts() {
		return this.productDAO.getAllProducts();
	}
	@Transactional
	public Product getProductById(int id) {
		
		return this.productDAO.getProductById(id);
	}

	public List<Product> getProductsByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}
	@Transactional
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		this.productDAO.addProduct(product);

	}
	@Transactional
	public void editProduct(Product product, int id) {
		this.productDAO.editProduct(product, id);

	}
	@Transactional
	public void deleteProduct(int productId) {
		this.productDAO.deleteProduct(productId);

	}

}
