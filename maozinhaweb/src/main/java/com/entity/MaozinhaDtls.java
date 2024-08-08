package com.entity;

public class MaozinhaDtls {

	
	private int maozinha_id;
	private String maozinha_name;
	private String req_name;
	private String total_value;
	private String min_value;
	private String category;
	private String status;
	private String photoName;
	private String user_email;
	
	public MaozinhaDtls() {
		super();
		
	}
	
	
	
	public MaozinhaDtls(String maozinha_name, String req_name, String total_value, String min_value, String category,
			String status, String photoName, String user_email) {
		super();
		this.maozinha_name = maozinha_name;
		this.req_name = req_name;
		this.total_value = total_value;
		this.min_value = min_value;
		this.category = category;
		this.status = status;
		this.photoName = photoName;
		this.user_email = user_email;
	}
	
	
	
	@Override
	public String toString() {
		return "MaozinhaDtls [maozinha_id=" + maozinha_id + ", maozinha_name=" + maozinha_name + ", req_name="
				+ req_name + ", total_value=" + total_value + ", min_value=" + min_value + ", category=" + category
				+ ", status=" + status + ", photoName=" + photoName + ", user_email=" + user_email + "]";
	}


	public int getMaozinha_id() {
		return maozinha_id;
	}

	public void setMaozinha_id(int maozinha_id) {
		this.maozinha_id = maozinha_id;
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
	public String getTotal_value() {
		return total_value;
	}
	public void setTotal_value(String total_value) {
		this.total_value = total_value;
	}
	public String getMin_value() {
		return min_value;
	}
	public void setMin_value(String min_value) {
		this.min_value = min_value;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photo) {
		this.photoName = photo;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
}
