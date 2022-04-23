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

public class SubcategoryTest {

	
	private static EntityManagerFactory emf;
	private  EntityManager em;
	private Subcategory subcategory;

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
		subcategory = em.find(Subcategory.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		subcategory = null;
	}
	
	@Test
	@DisplayName("Testing Subcategory Entity Mapping")
	void test() {
//		SELECT name, description FROM subcategory;
//		+------------+-------------+
//		| name       | description |
//		+------------+-------------+
//		| DeathMatch | L vs A      |
//		+------------+-------------+
		assertNotNull(subcategory);
		assertEquals("DeathMatch", subcategory.getName());
		assertEquals("L vs A", subcategory.getDescription());
	}
		
		@Test
		@DisplayName("Testing Subcategory realtional to Bettable Event")
		void test1() {

			assertNotNull(subcategory);
			
		
		
	}
}
