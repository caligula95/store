package com.spring.domain.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.spring.domain.Product;

import com.spring.domain.repository.ProductDAO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	List<Product> products = new ArrayList<Product>();
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<Product> getAllProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		products = session.createQuery("from Product").list();
		return products;
	}

	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		return p;
	}

	public List<Product> getProductsByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();

	}

	public void editProduct(Product product, int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		p.setTitle(product.getTitle());
		p.setDescription(product.getDescription());
		p.setCount(product.getCount());
		p.setPrice(product.getPrice());
		p.setID_provider(product.getID_provider());
		session.update(p);
		System.out.println("product updated");

	}

	public void deleteProduct(int productId) {
		Session session = this.sessionFactory.getCurrentSession();
		Product product = (Product) session.load(Product.class, new Integer(productId));
		if (null != product)
		session.delete(product);

	}
	
	

}
