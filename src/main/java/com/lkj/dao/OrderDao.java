package com.lkj.dao;

import java.util.List;

import com.lkj.entity.Order;


public interface OrderDao {
	public int createOrder(Order order);
	public Order queryById(String orderId);
	public List<Order> queryByUserId(String userId);
}
