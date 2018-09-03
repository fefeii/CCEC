package com.example.mapper;

import java.util.List;

import com.example.model.Cart;

public interface CartMapper {

	List<Cart> findUserPro(int userid);
	int insertCart(int userid,int productid,String pname,float price,int pnum,String picture,float price_total);
	int deleteCart(int cartid);
	int deleteProFromCart(int productid);
}
