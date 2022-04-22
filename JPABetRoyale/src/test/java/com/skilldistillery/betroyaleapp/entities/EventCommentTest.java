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

class EventCommentTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private EventComment eventComment;

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
		eventComment = em.find(EventComment.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		eventComment = null;
	}
	

	@Test
	@DisplayName("Testing Event Comment Entity Mapping")
	void test() {
		assertNotNull(eventComment);
		assertEquals("2022-04-22T14:12", eventComment.getCommentDate().toString());
		assertEquals("grilled cheese", eventComment.getCommentText());
//		select e.comment_date, e.comment_text, e.id from event_comment e Where id = 1;
//		+---------------------+----------------+----+
//		| comment_date        | comment_text   | id |
//		+---------------------+----------------+----+
//		| 2022-04-22 14:12:00 | grilled cheese |  1 |
//		+---------------------+----------------+----+
	}

}
