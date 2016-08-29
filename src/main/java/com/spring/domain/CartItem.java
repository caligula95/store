package com.spring.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="cart_item")
public class CartItem implements Serializable{
	private static final long serialVersionUID = -3532397236419382983L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Product product;
	private int quantity;
	private int totalPrice;
	@ManyToOne
	@JoinColumn(name="cartId", nullable=false)
	private Cart cart;
	
	public CartItem() {
		// TODO Auto-generated constructor stub
	}

	public CartItem(Product product) {
		super();
		this.product = product;
		this.quantity = 1;
		this.totalPrice = product.getPrice();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
		this.updateTotalPrice();
	}
	
	public Cart getCart() {
		return cart;
	}
	
	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
		this.updateTotalPrice();
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void updateTotalPrice() {
		totalPrice = this.product.getPrice()*this.quantity;
	}

	@Override
	public int hashCode() {
		final int prime = 311;
		int result = 1;
		result = prime * result + ((product == null) ? 0 : product.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartItem other = (CartItem) obj;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "[id=" + id + ", Продукт:" + product.toString() + ", Количество:" + quantity + ", Сумма:" + totalPrice
				+  "]";
	}
	
}