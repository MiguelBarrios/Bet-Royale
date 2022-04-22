package com.skilldistillery.betroyaleapp.entities;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;

class BettableEventTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	 BettableEvent bet;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	}
	
	

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bet = em.find(BettableEvent.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bet = null;
	}

}
