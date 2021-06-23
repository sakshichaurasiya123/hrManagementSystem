package com.nagarro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.dao.UserDao;
import com.nagarro.daoimpl.UserDaoImpl;
import com.nagarro.model.User;

@Service
public class UserServiceImpl  implements UserService{

	@Autowired
   private UserDao userDao;

	

	public void addLoginDetails(User user) {
		userDao.addLoginDetails(user);
	}

	public boolean isValidateUser(String username, String password) {
		return userDao.isValidateUser(username, password);
	}
	
	
}
