package com.skilldistillery.betroyaleapp.client;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.User;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {
		Client client = new Client();
		User user = new User();
		user.setUsername("mmbar");
	
		
	}
	
	//@Override
	public User addNewUser(User user) {
		em.persist(user);
		em.flush();
		return user;
	}
}
