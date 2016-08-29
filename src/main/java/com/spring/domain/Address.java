package com.spring.domain;

import java.io.Serializable;

public class Address implements Serializable {
	private static final long serialVersionUID = -530086768384258062L;
	private String streetName;
	private String homeNumber;
	private String city;
	public Address() {
		// TODO Auto-generated constructor stub
	}
	public Address(String streetName, String homeNumber, String city) {
		super();
		this.streetName = streetName;
		this.homeNumber = homeNumber;
		this.city = city;
	}
	public String getStreetName() {
		return streetName;
	}
	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}
	public String getHomeNumber() {
		return homeNumber;
	}
	public void setHomeNumber(String homeNumber) {
		this.homeNumber = homeNumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return " [streetName=" + streetName + ", homeNumber=" + homeNumber + ", city=" + city + "]";
	}
	
}
