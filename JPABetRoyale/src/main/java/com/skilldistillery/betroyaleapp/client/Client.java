package com.skilldistillery.betroyaleapp.client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.Wager;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {
		Category category = new Category();
		String jpql = "SELECT w FROM Wager w where w.user.id = :id";
		try {
			jpql = "SELECT w FROM Wager w where w.user.id = :id";
			List<Wager> wagers = em.createQuery(jpql, Wager.class).setParameter("id", 2).getResultList();
			System.out.println(wagers);
			
			}catch(Exception e){ 
				e.printStackTrace();
			} 
		
		System.out.println("EOP");
	
		
	
		
	}
	
}
