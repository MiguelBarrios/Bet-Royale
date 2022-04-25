package com.skilldistillery.betroyaleapp.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;

@Service
public class EventsDaoImpl implements EventsDAO {

	public static void main(String[] args) {
		EventsDaoImpl dao = new EventsDaoImpl();
	}

	@PersistenceContext
	private EntityManager em;

	@Override

	public List<BettableEvent> displayBettableEvents() {
		List<BettableEvent> betEvents = new ArrayList<BettableEvent>();
		try {
			String jpql = "SELECT b FROM BettableEvent b";

			betEvents = em.createQuery(jpql, BettableEvent.class).getResultList();

		} catch (Exception e) {
			return betEvents;
		}
		return betEvents;
	}

	@Override
	public List<BettableEvent> displayActiveBettableEvents() {
		List<BettableEvent> activeBetEvents = new ArrayList<BettableEvent>();

		try {
			String jpql = "SELECT b FROM BettingEvent b WHERE b.active = 1";

			activeBetEvents = em.createQuery(jpql, BettableEvent.class).getResultList();
		} catch (Exception e) {

			return activeBetEvents;
		}

		return activeBetEvents;
	}

	
	
	@Override
	public List<BettableEvent> displayExpiredBettableEvents() {
		List<BettableEvent> expiredBetEvents = new ArrayList<BettableEvent>();
		try {
			String jpql = "SELECT b FROM BettingEvent b WHERE b.active = 0";

			expiredBetEvents = em.createQuery(jpql, BettableEvent.class).getResultList();
		} catch (Exception e) {

			return expiredBetEvents;
		}

		return expiredBetEvents;
	}
}


