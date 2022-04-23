package com.skilldistillery.betroyaleapp.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.LocalDate;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ViewingPartyTest {

	private static EntityManagerFactory emf;
	
	private EntityManager em;
	
	private ViewingParty viewingParty;
	
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
	    viewingParty = em.find(ViewingParty.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	    em.close();
	    viewingParty = null;
	}

	@Test
	@DisplayName("Testing basic Viewing party mapping")
	void test() {
		assertNotNull(viewingParty);
		assertEquals("literally anything", viewingParty.getTitle());
		LocalDate start = LocalDate.parse("2022-04-22");
		assertEquals(start, viewingParty.getStartDate());
	}
	
	@Test
	@DisplayName("Testing MTO mapping from viewing party to bettable event")
	void test2() {
		//select vp.id, vp.bettable_event_id, be.name from viewing_party vp 
		//join bettable_event be on vp.bettable_event_id = be.id;
//		+----+-------------------+--------------+
//		| id | bettable_event_id | name         |
//		+----+-------------------+--------------+
//		|  1 |                 1 | does it work |
//		+----+-------------------+--------------+
		assertNotNull(viewingParty);
		BettableEvent event = viewingParty.getEvent();
		assertNotNull(event);
		assertEquals(1,event.getId());
		assertEquals("does it work", event.getName());
	}
	
	@Test
	@DisplayName("Testing MTO mapping from viewing party to user")
	void test3() {
		//select vp.id, vp.user_id, u.id, u.username from viewing_party vp 
		//join user u on u.id = vp.user_id 
		//where vp.id = 1;
//		+----+---------+----+-----------+
//		| id | user_id | id | username  |
//		+----+---------+----+-----------+
//		|  1 |       2 |  2 | lpaladini |
//		+----+---------+----+-----------+
		assertNotNull(viewingParty);
		User user = viewingParty.getUser();
		assertNotNull(user);
		assertEquals(2, user.getId());
		assertEquals("lpaladini", user.getUsername());
	}
	
}
