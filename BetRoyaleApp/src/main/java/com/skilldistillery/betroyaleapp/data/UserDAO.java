package com.skilldistillery.betroyaleapp.data;

import com.skilldistillery.betroyaleapp.entities.User;

public interface UserDAO {

	User findById(int userId);
	User createUser(User user);
	User updateUser(User user);
	User login(String userName, String password);
	
}
