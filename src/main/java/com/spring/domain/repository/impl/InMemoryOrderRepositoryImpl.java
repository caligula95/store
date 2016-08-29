package com.spring.domain.repository.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.domain.Order;
import com.spring.domain.repository.OrderRepository;
import com.spring.service.MailService;

@Repository
public class InMemoryOrderRepositoryImpl implements OrderRepository {
	@Autowired
	MailService mailService;
	
	private Map<Long, Order> listOfOrders;
	private long nextOrderId;

	public InMemoryOrderRepositoryImpl() {
		listOfOrders = new HashMap<Long, Order>();
		nextOrderId = 1000;
	}

	public Long saveOrder(Order order) {
		order.setOrderId(getNextOrderId());
		listOfOrders.put(order.getOrderId(), order);
		mailService.readyToSendEmail("burdden@gmail.com", "burdaden15@yandex.ua", order.getOrderId().toString(), order.toString());
		return order.getOrderId();
	}

	private synchronized long getNextOrderId() {
		return nextOrderId++;
	}

}
