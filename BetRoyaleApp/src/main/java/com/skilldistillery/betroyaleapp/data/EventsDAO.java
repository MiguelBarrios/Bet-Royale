package com.skilldistillery.betroyaleapp.data;

import java.util.List;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.User;

public interface EventsDAO {

	List<BettableEvent> displayBettableEvents();
	

}
