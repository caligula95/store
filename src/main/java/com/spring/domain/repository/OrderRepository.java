package com.spring.domain.repository;

import com.spring.domain.Order;

public interface OrderRepository {
	Long saveOrder(Order order);

}
