package com.example.model;

public class Product {
	private int productid;
	private float price;
	private String pname;
	private String pmodel;
	private String ptype;
	private String pdescribe;
	private String prepicture;
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPmodel() {
		return pmodel;
	}
	public void setPmodel(String pmodel) {
		this.pmodel = pmodel;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPdescribe() {
		return pdescribe;
	}
	public void setPdescribe(String pdescribe) {
		this.pdescribe = pdescribe;
	}
	
	public String getPrepicture() {
		return prepicture;
	}
	public void setPrepicture(String picturesrc) {
		this.prepicture = picturesrc;
	}
	@Override
	public String toString() {
		return "Product [productid=" + productid + ", price=" + price
				+ ", pname=" + pname + ", pmodel=" + pmodel + ", ptype="
				+ ptype + ", pdescribe=" + pdescribe + "]";
	}
	
	
}
