package com.skilldistillery.betroyaleapp.client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {
		String jpql = "Select b from BettableEvent b";
		
		List<BettableEvent> contenders = em.createQuery(jpql, BettableEvent.class)
				.getResultList();
		
		contenders.forEach(System.out::println);
		
	
		
	}
	
}
