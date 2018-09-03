package com.example.mapper;

import java.util.List;

import com.example.model.Author;
import com.example.model.City;
import com.example.model.Product;
import com.example.model.Userinfo;

public interface UserinfoMapper {
	List<Userinfo> findAllUser();
	List<Userinfo> doSearchByName(String uname);
	int doUserDel(int userid);
	
	Userinfo selectUsed(int userid);
	int insertUserinfo(Userinfo user);

	Userinfo loginUser(String account,String pwd);
	Userinfo loginUsed(String account);
	int updateUser(Userinfo user);
	
	
}