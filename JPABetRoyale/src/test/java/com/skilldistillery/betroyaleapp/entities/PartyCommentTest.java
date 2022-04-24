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

class PartyCommentTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private PartyComment partyComment;
	
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
		partyComment = em.find(PartyComment.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		partyComment = null;
	}

	@Test
	@DisplayName("Testing Party Comment Entity Mapping")
	void test() {
		assertNotNull(partyComment);
		assertEquals(2022, partyComment.getCommentDate().getYear());
		assertEquals(4, partyComment.getCommentDate().getMonthValue());
		assertEquals(21, partyComment.getCommentDate().getDayOfMonth());
		assertEquals("Grilled Salmon", partyComment.getCommentText());
//		select p.id, p.comment_date from party_comment p where id = 1;
//		+----+---------------------+
//		| id | comment_date        |
//		+----+---------------------+
//		|  1 | 2022-04-22 00:00:00 |
//		+----+---------------------+
//		select p.id, p.comment_text from party_comment p where id = 1;
//		+----+----------------+
//		| id | comment_text   |
//		+----+----------------+
//		|  1 | Grilled Salmon |
//		+----+----------------+


		
	}

}
