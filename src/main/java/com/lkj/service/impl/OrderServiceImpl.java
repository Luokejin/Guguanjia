package com.lkj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lkj.dao.OrderDao;
import com.lkj.entity.Order;
import com.lkj.service.OrderService;


@Service("OrderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao orderDao;

	@Override
	public int addOrder(Order order) {
		return orderDao.createOrder(order) ;
	}

	@Override
	public Order selectByOrderId(String orderId) {
		return orderDao.queryById(orderId);
	}

	@Override
	public String returnOrderId(String orderId) {
		Order order = orderDao.queryById(orderId);
		while(order != null) {
			if (order != null) {		
				orderId = "" + (Integer.parseInt(orderId)+1);
				order = orderDao.queryById(orderId);
			}
		}
		return orderId;
	}

	@Override
	public List<Order> selectByUserId(String userId) {
		return orderDao.queryByUserId(userId);
	}
	
	

	

	

	
	
	
	
}
