/**
 * Copyright 1999-2014 dangdang.com.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.jlinfo.admin.user;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.beans.factory.annotation.Autowired;

import com.jlinfo.admin.dao.UserDao;
import com.jlinfo.admin.model.User;
import com.jlinfo.admin.service.UserService;

/**
 * @author JeffyYang
 */
public class UserServiceImpl implements UserService {

    private final AtomicLong idGen = new AtomicLong();

	@Autowired
	private UserDao userDao;
	
    public Long createUser(User user) {
    	long now = System.currentTimeMillis()/1000;
    	user.setId(idGen.incrementAndGet());
    	user.setSalt("salt");
    	user.setCreateTime(now);
    	userDao.insertUser(user);
        return user.getId();
    }
    
    public User getUser(Long id) {
    	User user = userDao.selectUserById(id);
        return user;
    }
    
	public List<User> getUsers() {
		List<User> users = userDao.selectAllUser();
		return users;
	}

}
