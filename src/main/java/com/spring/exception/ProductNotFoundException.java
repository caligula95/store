package com.spring.exception;

public class ProductNotFoundException extends RuntimeException {
	private static final long serialVersionUID = -694354952032299587L;
	private int productId;

	public ProductNotFoundException(int productId2) {
		this.productId = productId2;
	}

	public int getProductId() {
		return productId;
	}
}
