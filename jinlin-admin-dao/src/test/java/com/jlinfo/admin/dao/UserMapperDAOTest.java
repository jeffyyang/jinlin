package com.jlinfo.admin.dao;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlinfo.admin.model.User;

public class UserMapperDAOTest extends BaseDAOTestCase {
	
	 public UserMapperDAOTest(){}
	 @Autowired
	 private UserMapper userMapper;
	 
	 @Before
	 public void init(){}
	 
	 @Test
	 public void getList(){
	  try{
		  List<User> users = userMapper.selectAllUser();
	  }catch(Exception e){
	   e.printStackTrace();
	  }
	 }
}