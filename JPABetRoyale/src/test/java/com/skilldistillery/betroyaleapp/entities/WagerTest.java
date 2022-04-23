package com.skilldistillery.betroyaleapp.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class WagerTest {

	private static EntityManagerFactory emf;
	
	private EntityManager em;
	
	private Wager wager;
	
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
	    wager = em.find(Wager.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	    em.close();
	    wager = null;
	}


	@Test
	@DisplayName("Testing basic wager mapping")
	void test() {
		assertNotNull(wager);
		assertEquals(100.0, wager.getBetAmount());
		assertEquals(2, wager.getMultiplier());
	}
	
	@Test
	@DisplayName("Testing MTO relationship between wager and contender")
	void test2() {
		/*
		 * SELECT * FROM wager JOIN contender 
		 * ON contender.id = wager.contender_id 
		 * WHERE wager.id = 1;
		 */
		assertNotNull(wager);
		Contender contender = wager.getContender();
		assertNotNull(contender);
		assertEquals(1, contender.getId());
		assertEquals("viper", contender.getName());
	}
	
	@Test
	@DisplayName("Testing MTO relationship between wager and user")
	void test3() {
		/*
		 * SELECT * FROM wager JOIN user 
		 * ON user.id = wager.user_id 
		 * WHERE wager.id = 1;
		 */
		assertNotNull(wager);
		User user = wager.getUser();
		assertNotNull(user);
		assertEquals(1, user.getId());
		assertEquals("lpaladini", user.getUsername());	
	}

}
