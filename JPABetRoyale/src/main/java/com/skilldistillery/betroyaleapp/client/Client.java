package com.skilldistillery.betroyaleapp.client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {

		List<BettableEvent> events;
		String jpql = "SELECT b FROM BettableEvent b where b.completion = true";
		try {
			events = em.createQuery(jpql, BettableEvent.class).getResultList();
			events.forEach(System.out::println);
			
		}catch(Exception e){ 
			e.printStackTrace();
		} 
		
		System.out.println("EOP");
	
		
	
		
	}
	
}
