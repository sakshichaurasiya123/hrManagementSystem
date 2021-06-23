package com.nagarro.dao;

import org.springframework.stereotype.Repository;

import com.nagarro.model.User;


public interface UserDao {

	public void addLoginDetails(User user);

	public boolean isValidateUser(String username, String password);

}
