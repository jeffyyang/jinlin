package com.jlinfo.admin.dao.provider;

import java.util.Map;

public class SqlProvider {

	 public String selectUser(Map<String, Object> para) {
		 
		 return "select * from user where userId=" + para.get("userId") + " and password='" + para.get("1") + "'";
	     // return "select * from user where userId=" + userId;
	 }	
	 
}
