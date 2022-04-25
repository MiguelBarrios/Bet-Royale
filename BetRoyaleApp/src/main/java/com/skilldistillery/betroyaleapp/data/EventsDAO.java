package com.skilldistillery.betroyaleapp.data;

import java.util.List;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.EventComment;

public interface EventsDAO {

	List<BettableEvent> displayBettableEvents();
	EventComment addComment(EventComment comment);

}
