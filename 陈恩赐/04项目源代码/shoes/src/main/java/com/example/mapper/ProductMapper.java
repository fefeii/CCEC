package com.example.mapper;

import java.util.List;

import com.example.model.City;
import com.example.model.Product;

public interface ProductMapper {
	List<Product> findAllProduct();
	List<Product> doSearchProduct(String pname);
	List<Product> doSearchProductByType(String ptype);
	List<Product> doSearchAllProductSort(String ptype);
	List<Product> doSearchAllProductSortAsc(String ptype);
//	·ÖÒ³
	List<Product> doAllSearchByPageDesc( int start,int pagesize);
	List<Product> doAllSearchByPageAsc( int start,int pagesize);//	List<Product> doSearchByPageAsc(String ptype,int start,int pagesize);
//	List<Product> doSearchByPageDesc(String ptype,int start,int pagesize);
	
	int deletePro(int productid);
	int doAdd(float price ,String pname,String Pmodel,String ptypeid,String pdescribe,String picture);
}
