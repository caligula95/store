package com.spring.service;

import com.spring.domain.Cart;

public interface CartService {
	Cart create(Cart cart);

	Cart read(String cartId);

	void update(String cartId, Cart cart);

	void delete(String cartId);
	Cart validate(String cartId);

}
