package com.spring.domain.repository;

import java.util.List;

import com.spring.domain.Product;

public interface ProductDAO {
	List<Product> getAllProducts();

	Product getProductById(int id);
	
	List<Product> getProductsByCategory(String category);

	void addProduct(Product product);

	void editProduct(Product product, int id);

	void deleteProduct(int productId);
}
