package com.example.model;

import java.util.Date;

public class Post {
	int id;
	String content;
	Date dob;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	@Override
	public String toString() {
		return "Post [id=" + id + ", content=" + content + ", dob=" + dob + "]";
	}

	
}
