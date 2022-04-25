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
//		Category category = new Category();
//		String jpql = "SELECT c FROM Category c WHERE c.name = :name";
//		try {
//			String keyword = "fight";
//			category = em.createQuery(jpql, Category.class)
//					.setParameter("name", keyword)
//					.getSingleResult();
//			System.out.println(category);
//			
//			}catch(Exception e){ 
//				e.printStackTrace();
//			} 
//		
//		System.out.println("EOP");
		
		
		
		String query = "SELECT b from BettableEvent b where b.active = :boolean";
		try {
			 query = "SELECT b from BettableEvent b where b.active = :boolean";
			
			List<BettableEvent> betEvents = em.createQuery(query, BettableEvent.class)
					.setParameter("boolean", false)
					.getResultList();
					System.out.println(betEvents);
			
		}catch(Exception e){ 
			e.printStackTrace();
		} 
		
		System.out.println("EOP");
	
		
	
		
	}
	
}
