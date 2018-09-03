package com.example.model;

import java.util.Date;

public class Author {
	private int id;
	private String name;
	private String phone;
	public int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "Author [id=" + id + ", name=" + name + ", phone=" + phone + "]";
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
