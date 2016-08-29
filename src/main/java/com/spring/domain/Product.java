package com.spring.domain;


import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.springframework.web.multipart.MultipartFile;
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@XmlRootElement
@Entity
@Table(name = "product")
public class Product implements Serializable {
	private static final long serialVersionUID = -3532377236418382983L;
	@Id
	@Column(name = "ID_product")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="productTitle")
	private String title;
	@Column(name="description")
	private String description;
	private int price;
	private int count;
	private int ID_provider;
	@Column(name="image")
	private	String productImage;
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(String title, String description, int price, int count, String productImage) {
		super();
		this.title = title;
		this.description = description;
		this.price = price;
		this.count = count;
		this.productImage = productImage;
	}
	
	public String getProductImage(){
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	public int getID_provider() {
		return ID_provider;
	}
	public void setID_provider(int iD_provider) {
		ID_provider = iD_provider;
	}
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", Название: " + title + ", Цена: " + price +  "]";
	}
	
}
