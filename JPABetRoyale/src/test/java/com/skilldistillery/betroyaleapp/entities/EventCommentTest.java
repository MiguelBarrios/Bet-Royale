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
	
//
	@Test
	@DisplayName("Testing Event Comment Entity Mapping")
	void test() {
		assertNotNull(eventComment);
		//assertEquals("2022-04-22T14:12", eventComment.getCommentDate().toString());
		assertEquals("grilled cheese", eventComment.getCommentText());
		assertEquals(2022, eventComment.getCommentDate().getYear());

//		select e.comment_date, e.comment_text, e.id from event_comment e Where id = 1;
//		+---------------------+----------------+----+
//		| comment_date        | comment_text   | id |
//		+---------------------+----------------+----+
//		| 2022-04-22 14:12:00 | grilled cheese |  1 |
//		+---------------------+----------------+----+
	}

	@Test
	@DisplayName("Testing MTO mapping from Event comment to Bettable Event")
	void test2() {
//		SELECT ec.id, ec.comment_text,e.id, e.name FROM event_comment ec join bettable_event e 
//		on ec.bettable_event_id = e.id where ec.id = 1
//		+----+----------------+----+--------------+
//		| id | comment_text   | id | name         |
//		+----+----------------+----+--------------+
//		|  1 | grilled cheese |  1 | does it work |
//		+----+----------------+----+--------------+
		assertNotNull(eventComment);
		BettableEvent event = eventComment.getBettableEvent();
		assertNotNull(event);
		assertEquals(1, event.getId());
		assertEquals("does it work", event.getName());
	}
	
	@Test
	@DisplayName("Testing MTO mapping from event comment to user")
	void test3() {
		assertNotNull(eventComment);
		//select * from event_comment ec join user 
		//on ec.user_id = user.id where ec.id = 1;
//		+----+---------------------+----------------+-------------------+---------+----------------+----+-----------+----------+------------+-----------+------------------+--------+-----------+---------------+----------+
//		| id | comment_date        | comment_text   | bettable_event_id | user_id | in_reply_to_id | id | username  | password | first_name | last_name | email            | active | role      | profile_image | about_me |
//		+----+---------------------+----------------+-------------------+---------+----------------+----+-----------+----------+------------+-----------+------------------+--------+-----------+---------------+----------+
//		|  1 | 2022-04-22 14:12:00 | grilled cheese |                 1 |       2 |           NULL |  2 | lpaladini | password | lucas      | paladini  | lpaladini@me.com |      1 | ROLE_USER | NULL          | NULL     |
//		+----+---------------------+----------------+-------------------+---------+----------------+----+-----------+----------+------------+-----------+------------------+--------+-----------+---------------+----------+
	
		User user = eventComment.getUser();
		assertNotNull(user);
		assertEquals(2, user.getId());
		assertEquals("lpaladini", user.getUsername());
	}
	
	@Test
	@DisplayName("Testing MTO mapping from event comment to event comment")
	void test4() {
		assertNotNull(eventComment);
		assertNotNull(eventComment.getReplies());
		assertTrue(eventComment.getReplies().size() > 0);
		
	}
}
