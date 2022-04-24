package com.skilldistillery.betroyaleapp.data;

import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

public interface UserDAO {

	User findById(int userId);
	User createUser(User user);
	User updateUser(User user);
	Wager createWager(Wager wager);
	User submitLogin(String username, String password);
	
}
