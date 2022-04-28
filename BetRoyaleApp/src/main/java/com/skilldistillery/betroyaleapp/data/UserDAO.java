package com.skilldistillery.betroyaleapp.data;

import java.util.List;
import java.util.Map;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.Subcategory;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

public interface UserDAO {

	User findById(int userId);
	User createUser(User user);
	User searchByUsername(String keyword);
	User updateUser(User user);
	User login(String username, String password);
//----------------------------------------------------------------------------------
	BettableEvent createBettableEvent(BettableEvent event, int userId );

//----------------------------------------------------------------------------------
	Wager createWager(Wager wager, int userId, int contenderId);
	Wager showWager(Wager wager, int userId);
	List<Wager> getWagers(int userId);
	CalculatedWinnings getWinnings(int userId);
	
	
//	----------------------------------------------------------------------------------
	Category searchByCategory(String keyword);
	Category createCategory(Category category);
	Subcategory createSubCategory(Subcategory sb);

	
//	----------------------------------------------------------------------------------
	Contender createContender(Contender contender);
	Wager updateWager(Wager wager);
	Wager findWagerById(int wagerId);
	
	Contender findContenderById(int contenderId);
	
	List<CalculatedWinnings> calculateLeaderBoard();
	
	
}
