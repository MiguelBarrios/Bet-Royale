package com.skilldistillery.betroyaleapp.data;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.User;

public interface UserDAO {

	User findById(int userId);
	User createUser(User user);
	User updateUser(User user);
	BettableEvent createBettableEvent(BettableEvent event );
	
}
