package com.skilldistillery.betroyaleapp.data;

import java.util.List;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

public interface UserDAO {

	User findById(int userId);
	User createUser(User user);

	User updateUser(User user);
	User searchByUsername(String keyword);


	BettableEvent createBettableEvent(BettableEvent event, int userId );
	Contender createContender(Contender contender);
	

	User login(String username, String password);
	Wager createWager(Wager wager, int userId, int contenderId);
	
	Category searchByCategory(String keyword);

	
	
	
	
}
