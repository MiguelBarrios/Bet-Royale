package com.skilldistillery.betroyaleapp.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class UserTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private User user;

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
		user = em.find(User.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		user = null;
	}

	@Test
	@DisplayName("Testing User Entity Mapping")
	void test() {
//		SELECT username, password, first_name, last_name FROM user WHERE id=1;
//		+----------+----------+------------+-----------+
//		| username | password | first_name | last_name |
//		+----------+----------+------------+-----------+
//		| admin    | admin    | bet        | royale    |
//		+----------+----------+------------+-----------+
		assertNotNull(user);
		assertEquals("admin", user.getUsername());
		assertEquals("admin", user.getPassword());
		assertEquals("bet", user.getFirstName());
		assertEquals("royale", user.getLastName());
	}
	
	@Test
	@DisplayName("Testing ManyToMany User(Many) ---> Category(Many)")
	void test2() {
		user = em.find(User.class, 2);
		assertNotNull(user);

		assertNotNull(user.getWagers());
		assertTrue(user.getWagers().size() > 0);

		assertNotNull(user.getCategories());
		assertTrue(user.getCategories().size() > 0);
	}
	
	@Test
	@DisplayName("Testing MTM relation from User to subcategory")
	void test3() {
		//mysql> select * from user_has_subcategory join subcategory sb on sb.id = user_has_subcategory.subcategory_id join user on user.id = user_has_subcategory.subcategory_id;
		user = em.find(User.class, 2);
		assertNotNull(user);
		List<Subcategory> subcategories = user.getSubcategories();
		assertNotNull(subcategories);
		assertTrue(subcategories.size() > 0);
	}

	@Test
	@DisplayName("Testing ManyToMany User(Many) ---> ViewingParty(Many)")
	void test6() {
		user = em.find(User.class, 2);
		assertNotNull(user);
		assertNotNull(user.getViewParties());
		assertTrue(user.getViewParties().size() > 0);
	}

	@Test
	@DisplayName("Testing ManyToMany User(Many) ---> Subcategories(Many)")
	void test4() {
		user = em.find(User.class, 2);
		assertNotNull(user);
		assertNotNull(user.getSubcategories());
		assertTrue(user.getSubcategories().size() > 0);

	}
	
	@Test
	@DisplayName("Testing OneToMany User(1)---> Categories(Many)")
	void test5() {
		user = em.find(User.class, 2);
		assertNotNull(user);
		assertNotNull(user.getCategories());
		assertTrue(user.getCategories().size() > 0);
	}
	
	

}
