package com.skilldistillery.betroyaleapp.data;

import com.skilldistillery.betroyaleapp.entities.User;

public interface UserDAO {

	User findById(int userId);
	
	
}
