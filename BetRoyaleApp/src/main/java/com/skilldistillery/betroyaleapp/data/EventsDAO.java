package com.skilldistillery.betroyaleapp.data;

import java.util.List;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;

public interface EventsDAO {

	List<BettableEvent> displayBettableEvents();
	
	List<BettableEvent> displayActiveBettableEvents();
	
	List<BettableEvent> displayExpiredBettableEvents();
	
}
