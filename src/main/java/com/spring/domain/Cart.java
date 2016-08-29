package com.spring.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart implements Serializable {
	private static final long serialVersionUID = -3532377236419382983L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String cartId;
	@OneToMany(mappedBy="cart")
	private Map<Integer, CartItem> cartItems;
	private int grandTotal;

	public Cart() {
		cartItems = new HashMap<Integer, CartItem>();
		grandTotal = 0;
	}

	public Cart(String cartId) {
		this();
		this.cartId = cartId;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public Map<Integer, CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(Map<Integer, CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	public int getGrandTotal() {
		return grandTotal;
	}

	public void addCartItem(CartItem item) {
		int productId = item.getProduct().getId();

		if (cartItems.containsKey(productId)) {
			CartItem existingCartItem = cartItems.get(productId);
			existingCartItem.setQuantity(existingCartItem.getQuantity() + item.getQuantity());
			cartItems.put(productId, existingCartItem);
		} else {
			cartItems.put(productId, item);
		}
		updateGrandTotal();
	}

	public void removeCartItem(CartItem item) {
		int productId = item.getProduct().getId();
		cartItems.remove(productId);
		updateGrandTotal();
	}

	public void updateGrandTotal() {
		grandTotal = 0;
		for (CartItem item : cartItems.values()) {
			grandTotal = grandTotal+(item.getTotalPrice());
		}
	}

	@Override
	public int hashCode() {
		final int prime = 71;
		int result = 1;
		result = prime * result + ((cartId == null) ? 0 : cartId.hashCode());
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
		Cart other = (Cart) obj;
		if (cartId == null) {
			if (other.cartId != null)
				return false;
		} else if (!cartId.equals(other.cartId))
			return false;
		return true;
	}
	public String getCartItem() {
		String productTitle = "";
		for (Entry<Integer, CartItem> entry : cartItems.entrySet())
		{
		    productTitle = "product title = " + entry.getKey() + "/" + entry.getValue().getProduct().getTitle();
		}
		return productTitle;
	}

	@Override
	public String toString() {
		return " cartItems=" + cartItems.toString() + ", Всего: " + grandTotal + "]";
	}
	
}