package com.skilldistillery.betroyaleapp.entities;

import static org.junit.jupiter.api.Assertions.*;

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
}
