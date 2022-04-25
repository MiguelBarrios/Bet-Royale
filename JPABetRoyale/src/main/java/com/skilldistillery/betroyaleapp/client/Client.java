package com.skilldistillery.betroyaleapp.client;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.Wager;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {

		List<BettableEvent> events = null;
		String jpql = "SELECT b FROM BettableEvent b where b.completion = true";
		try {
			events = em.createQuery(jpql, BettableEvent.class).getResultList();
			events.forEach(System.out::println);
			
		}catch(Exception e){ 
			e.printStackTrace();
		} 
		
		// check if contender data is filled
		// get all contenders for events that are completed
		Set<Contender> contenders = new HashSet<>();
		for(BettableEvent event : events) {
			for(Contender contender : event.getContenders()) {
				contenders.add(contender);
			}
		}
		
		System.out.println("--------------------");
		// get all wagers
		jpql = "Select w FROM Wager w";
		List<Wager> wagers = null;
		try {
			wagers = em.createQuery(jpql, Wager.class).getResultList();
		}catch(Exception e){
			e.printStackTrace();
		}
		for(Wager wager : wagers) {
			System.out.println(wager);
		}
		
		System.out.println("----------------");
		// Filter wagers
		
		
		System.out.println("EOP");
		
		
	
		
	
		
	}
	
}
