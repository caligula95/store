package com.spring.mail;

import com.spring.domain.Product;

public class EmailModel {
	private String phone, name;
	private Product product;
	private String eMail;
	private String body;
	public EmailModel() {
		// TODO Auto-generated constructor stub
	}
	public EmailModel(String phone, String name, Product product) {
		super();
		this.phone = phone;
		this.name = name;
		this.product = product;
	}
	public EmailModel(String phone, String name) {
		this.phone = phone;
		this.name = name;
	}
	public EmailModel(String name, String eMail, String mobile, String body) {
		this.name = name;
		this.eMail = eMail;
		this.phone = mobile;
		this.body = body;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
}
