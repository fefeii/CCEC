package com.example.model;

public class Manager {
	private int managerid;
	private String account;
	private String pwd;
	public int getManagerid() {
		return managerid;
	}
	public void setManagerid(int managerid) {
		this.managerid = managerid;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "Manager [managerid=" + managerid + ", account=" + account
				+ ", pwd=" + pwd + "]";
	}
	
}
