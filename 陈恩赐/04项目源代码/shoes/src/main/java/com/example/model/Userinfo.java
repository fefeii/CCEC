package com.example.model;

public class Userinfo {
	private int userid;
	private String account;
	private String pwd;
	private String sex;
	private String tel;
	private String email;
	public Userinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Userinfo(int userid,String account,String pwd,String sex,String tel,String email){
		this.account=account;
		this.email=email;
		this.pwd=pwd;
		this.sex=sex;
		this.tel=tel;
		this.userid=userid;
	}
	@Override
	public String toString() {
		return "userinfo [userid=" + userid + ", account=" + account + ", pwd="
				+ pwd + ", sex=" + sex + ", tel=" + tel + ", email=" + email
				+ "]";
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
