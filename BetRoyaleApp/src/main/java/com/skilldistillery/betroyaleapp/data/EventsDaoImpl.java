package com.skilldistillery.betroyaleapp.data;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.EventComment;
import com.skilldistillery.betroyaleapp.entities.User;

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

	@Transactional
	@Override
	public EventComment addComment(EventComment comment) {
		em.persist(comment);
		em.flush();
		return comment;
	}

	@Override
	public BettableEvent findEventById(int id) {
		return em.find(BettableEvent.class, id);
	}

	@Override
	public User findUserById(int id) {
		return em.find(User.class, id);
	}
	
	
	@Override
	public List<BettableEvent> displayActiveBettableEvents() {
		List<BettableEvent> activeBetEvents = new ArrayList<BettableEvent>();

		try {
			String jpql = "SELECT b FROM BettableEvent b WHERE b.active = 1";

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
			String jpql = "SELECT b FROM BettableEvent b WHERE b.active = 0";

			expiredBetEvents = em.createQuery(jpql, BettableEvent.class).getResultList();
		} catch (Exception e) {

			return expiredBetEvents;
		}

		return expiredBetEvents;
	}

	// single user created list
	@Override
	public List<BettableEvent> displayUserCreatedBettableEvents(int userId) {
		List<BettableEvent> userCreated = new ArrayList<BettableEvent>();
		try {
		String jpql = "select b from BettableEvent b where b.user.id = :id";
		
		userCreated = em.createQuery(jpql, BettableEvent.class)
				.setParameter("id", userId)
				.getResultList();
		
		}catch (Exception e) {
			return userCreated;
		}
		return userCreated;
	}

	
	@Transactional
	@Override
	public Contender updateContender(int contenderId, boolean isWinner) {
		
		Contender contender = em.find(Contender.class, contenderId);
		contender.setIsWinner(isWinner);
		em.persist(contender);
		em.flush();
		
		
		return contender;
		
	}
	@Transactional
	@Override
	public BettableEvent updateBettableEvent(BettableEvent event) {
		em.persist(event);
		em.flush();
		
		return event;
	}

	@Override
	public List<BettableEvent> getAllCompletedEvents() {
		List<BettableEvent> events = null;
		
		String jpql = "SELECT b FROM BettableEvent b where b.completion = true";
		try {
			events = em.createQuery(jpql, BettableEvent.class).getResultList();
			events.forEach(System.out::println);
			
		}catch(Exception e){ 
			e.printStackTrace();
		}
		
		// get all contenders for events that are completed
		Set<Contender> contenders = new HashSet<>();
		for(BettableEvent event : events) {
			for(Contender contender : event.getContenders()) {
				contenders.add(contender);
			}
		}
		
		
		return events;
	}
	

	
}


