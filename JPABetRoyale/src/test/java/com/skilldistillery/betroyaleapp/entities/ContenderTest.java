package com.skilldistillery.betroyaleapp.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class ContenderTest {
	private static EntityManagerFactory emf;
	
	private EntityManager em;
	
	private Contender contender;
	
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
	    contender = em.find(Contender.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	    em.close();
	    contender = null;
	}

	@Test
	@DisplayName("Testing basic contender mapping")
	void test() {
		assertNotNull(contender);
		assertEquals("viper", contender.getName());
		assertEquals("this will work", contender.getDescription());
		assertEquals(0.5, contender.getOdds());
	}

	@Test
	@DisplayName("Testing mapping from contender to bettable event")
	void test2() {
		assertNotNull(contender);
		BettableEvent event = contender.getEvent();
		assertNotNull(event);
		assertEquals(1,event.getId());
		assertEquals("does it work", event.getName());
	}
	
	
	@Test
	@DisplayName("Testing relational mapping from bettable event to contender")
	void test3() {
		assertNotNull(contender);
		assertNotNull(contender.getEvent());		
		assertEquals(1, contender.getEvent().getId());
		
	}
}
