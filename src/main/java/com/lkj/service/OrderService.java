package com.lkj.service;

import java.util.List;

import com.lkj.entity.Order;

public interface OrderService {
	public int addOrder(Order order);
	public Order selectByOrderId(String orderId);
	List<Order> selectByUserId(String userId);
	public String returnOrderId(String orderId);
}
