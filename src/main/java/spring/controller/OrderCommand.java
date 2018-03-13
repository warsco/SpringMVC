package spring.controller;

import java.util.List;

import spring.model.Address;
import spring.model.OrderItem;

public class OrderCommand {
	
	private List<OrderItem> orderItems;
	private Address address;
	
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	


}
