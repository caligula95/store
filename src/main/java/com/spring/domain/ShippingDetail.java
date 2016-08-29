package com.spring.domain;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ShippingDetail implements Serializable{
	private static final long serialVersionUID = 6350930334140807514L;
	private String name;
	private DateFormat shippingDate;
	private Address shippingAddress;

	public ShippingDetail() {
		this.shippingAddress = new Address();
		shippingDate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		this.shippingDate.format(new Date());
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public DateFormat getShippingDate() {
		return shippingDate;
	}

	public void setShippingDate(DateFormat shippingDate) {
		this.shippingDate = shippingDate;
	}

	public Address getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(Address shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	@Override
	public String toString() {
		return "Время заказа:" + shippingDate.format(new Date()) + ", Адрес"
				+ shippingAddress.toString() + "";
	}



}
