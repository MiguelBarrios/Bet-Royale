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


	@Test
	@DisplayName("Testing creation of bet event to the user")
	void test1() {
//		+----+--------------+---------------------+------------+---------+----------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------+
//		| id | name         | end_date            | completion | user_id | description          | image_url                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | date_created | active |
//		+----+--------------+---------------------+------------+---------+----------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------+
//		|  1 | does it work | 2022-04-30 14:12:00 |       NULL |       2 | does this test work? | https://www.google.com/imgres?imgurl=https%3A%2F%2Fus.123rf.com%2F450wm%2Falphaspirit%2Falphaspirit1906%2Falphaspirit190600058%2F124217648-man-who-rejoices-at-the-stadium-for-winning-a-rich-soccer-bet.jpg%3Fver%3D6&imgrefurl=https%3A%2F%2Fwww.123rf.com%2Fstock-photo%2Fsports_betting.html&tbnid=3EN7PJ6UFYMtaM&vet=12ahUKEwiSqc-Pv6j3AhVkIH0KHft-A3oQMygEegUIARDqAQ..i&docid=dSDGFOzCjKLSVM&w=450&h=253&q=betting%20image&ved=2ahUKEwiSqc-Pv6j3AhVkIH0KHft-A3oQMygEegUIARDqAQ | NULL         |      1 |
//		+----+--------------+---------------------+------------+---------+----------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------+--------+
		
		assertNotNull(bet);
		assertEquals(1, bet.getId());
		assertEquals("does it work", bet.getName());
		//assertEquals("2022-04-30T13:12", bet.getEndDate().toString());
		assertEquals("does this test work?", bet.getDescription());
		
		
	}
	
	
	

}
