package com.skilldistillery.betroyaleapp.data;

import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

@Service
@Transactional
public class UserDaoImpl implements UserDAO {

	private Map<Integer, User> users;

	public static void main(String[] args) {
		UserDaoImpl dao = new UserDaoImpl();
		User user = dao.findById(1);
		System.out.println(user);
	}

	@PersistenceContext
	private EntityManager em;

	@Override
	public User findById(int userId) {
		return em.find(User.class, userId);
	}
	
	@Override
	public User searchByUsername(String username) {
		User user = null;
		
		String jpql = "SELECT u FROM User u where u.username = :username";
		try {
			user = em.createQuery(jpql, User.class)
					.setParameter("username", username)
					.getSingleResult();
			
			
			}catch(Exception e){ }
		return user;
	}

	@Override
	public User createUser(User user) {
		em.persist(user);
		em.flush();
		return user;
	}

	@Override
	public User updateUser(User user) {
		User updatedUser = findById(user.getId());
		updatedUser.setFirstName(user.getFirstName());
		updatedUser.setLastName(user.getLastName());
		updatedUser.setPassword(user.getPassword());
		updatedUser.setEmail(user.getEmail());
		updatedUser.setActive(user.getActive());
		updatedUser.setRole(user.getRole());
		updatedUser.setProfileImage(user.getProfileImage());
		updatedUser.setAboutMe(user.getAboutMe());

		em.persist(updatedUser);
		em.flush();
		return updatedUser;
	}


	
	
	
	@Override
	public BettableEvent createBettableEvent(BettableEvent event, int userId) {
		User user = em.find(User.class, userId);
		event.setUser(user);
		em.persist(event);
		em.flush();
		return event;
	}
	

	@Override
	public Contender createContender(Contender contender) {
		em.persist(contender);
		em.flush();
		return contender;
	}


	@Override
	public User login(String username, String password) {
		
		User user = null;
		
		String jpql = "SELECT u FROM User u where u.username = :username";
		try {
			user = em.createQuery(jpql, User.class)
					.setParameter("username", username)
					.getSingleResult();
			
			if(user != null) {
				if(user.getPassword().equals(password)) {
					return user;
				}
			}
		}catch(Exception e){ }
		return null;
}

	@Override
	public Wager createWager(Wager wager, int userId, int contenderId) {
		User user = em.find(User.class, userId);
		wager.setUser(user);
		wager.setBetAmount(wager.getBetAmount());
		Contender contender = em.find(Contender.class, contenderId);
		wager.setContender(contender);
		em.persist(wager);
		em.flush();
		

		return wager;

	}


	@Override
	public Category searchByCategory(String keyword) {
		Category category = new Category();
		String jpql = "SELECT c.id, c.name, c.description FROM category c WHERE c.name = :name";
		try {
			category = em.createQuery(jpql, Category.class)
					.setParameter("name", category)
					.getSingleResult();
			
			
			}catch(Exception e){ }
		
		
		return category;
	}




}
