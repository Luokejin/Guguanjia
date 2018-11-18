package com.lkj.entity;

import java.util.Date;

public class Order {
	private String orderId;
	private String carNum;
	private String orderStatus;
	private String orderCreateTime;
	private String orderEndTime;
	private String userId;
	private int disposalId;
	
	
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getOrderCreateTime() {
		return orderCreateTime;
	}
	public void setOrderCreateTime(String orderCreateTime) {
		this.orderCreateTime = orderCreateTime;
	}
	public String getOrderEndTime() {
		return orderEndTime;
	}
	public void setOrderEndTime(String orderEndTime) {
		this.orderEndTime = orderEndTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getDisposalId() {
		return disposalId;
	}
	public void setDisposalId(int disposalId) {
		this.disposalId = disposalId;
	}
	
}
