package com.example.mapper;

import com.example.model.Manager;
import com.example.model.Userinfo;

public interface ManagerMapper {
	Manager loginManager(String account,String pwd);

	int updatePwd(String pwd,String account);
}
