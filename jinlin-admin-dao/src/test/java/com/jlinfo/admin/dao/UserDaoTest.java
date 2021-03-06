package com.jlinfo.admin.dao;

import static org.junit.Assert.assertNotNull;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
//import static org.hamcrest.CoreMatchers.allOf;
//import static org.hamcrest.CoreMatchers.anyOf;
//import static org.hamcrest.CoreMatchers.equalTo;
//import static org.hamcrest.CoreMatchers.not;
//import static org.hamcrest.CoreMatchers.sameInstance;
//import static org.hamcrest.CoreMatchers.startsWith;
//import static org.junit.Assert.assertThat;
//import static org.junit.matchers.JUnitMatchers.both;
//import static org.junit.matchers.JUnitMatchers.containsString;
//import static org.junit.matchers.JUnitMatchers.everyItem;
//import static org.junit.matchers.JUnitMatchers.hasItems;
import org.springframework.beans.factory.annotation.Autowired;

import com.jlinfo.admin.model.User;

public class UserDaoTest extends BaseDaoTestCase {

	public UserDaoTest() {
	}

	@Autowired
	private UserDao userMapper;

    private final AtomicLong idGen = new AtomicLong();

	@Before
	public void init() {
	}

	// @Ignore("Test is ignored as a demonstration")
	@Test
	public void insert() {
		
		User user = new User(12l, "testuser");
		user.setEmail("test@sina.com");
		user.setMobile("13376069091");
		user.setSalt("");
		user.setPassword("password");
		try {
			userMapper.insertUser(user);
			assertNotNull("should not be null", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void getUser() {
		
		try {
			User user = userMapper.selectUserById(1l);
			assertNotNull("should not be null", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void getUserList() {
		
		try {
			List<User> users = userMapper.selectAllUser();
			assertNotNull("should not be null", users);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Ignore("Test is ignored as a demonstration")
	@Test
	public void testInsertUser() {

	}

	@Ignore("Test is ignored as a demonstration")
	@Test(timeout = 1000)
	public void testWithTimeout() {

	}

}