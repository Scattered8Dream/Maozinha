package com.entity;

public class Cart {

	private int cart_id;
	private int maozinha_id;
	private int user_id;
	private String maozinha_name;
	private String req_name;
	private double value;
	private double total_value;
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getMaozinha_id() {
		return maozinha_id;
	}
	public void setMaozinha_id(int maozinha_id) {
		this.maozinha_id = maozinha_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getMaozinha_name() {
		return maozinha_name;
	}
	public void setMaozinha_name(String maozinha_name) {
		this.maozinha_name = maozinha_name;
	}
	public String getReq_name() {
		return req_name;
	}
	public void setReq_name(String req_name) {
		this.req_name = req_name;
	}
	public double getPrice() {
		return value;
	}
	public void setPrice(double value) {
		this.value = value;
	}
	public double getTotal_price() {
		return total_value;
	}
	public void setTotal_price(double total_value) {
		this.total_value = total_value;
	}

}