package com.nagarro.service;

import com.nagarro.model.User;


public interface UserService {
	
	
	public void addLoginDetails(User user);

	public boolean isValidateUser(String username, String password);

}
