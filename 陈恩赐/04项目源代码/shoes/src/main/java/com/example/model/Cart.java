package com.example.model;

public class Cart {
	private int cartid;
	private int userid;
	private int productid;
	private String pname;
	private float price;
	private int pnum;
	private String picture;
	private float price_total;
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public float getPrice_total() {
		return price_total;
	}
	public void setPrice_total(float price_total) {
		this.price_total = price_total;
	}
	@Override
	public String toString() {
		return "Cart [cartid=" + cartid + ", userid=" + userid + ", productid="
				+ productid + ", pname=" + pname + ", price=" + price
				+ ", pnum=" + pnum + "]";
	}
	
	
	
}
