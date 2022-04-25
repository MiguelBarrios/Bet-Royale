package com.skilldistillery.betroyaleapp.data;

import java.util.List;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.EventComment;
import com.skilldistillery.betroyaleapp.entities.User;

public interface EventsDAO {

	List<BettableEvent> displayBettableEvents();
	EventComment addComment(EventComment comment);
	BettableEvent findEventById(int id);
	User findUserById(int id);

	List<BettableEvent> displayActiveBettableEvents();
	
	List<BettableEvent> displayExpiredBettableEvents();
	

}
