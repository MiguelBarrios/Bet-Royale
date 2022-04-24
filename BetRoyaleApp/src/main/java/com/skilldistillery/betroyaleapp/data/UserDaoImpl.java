package com.skilldistillery.betroyaleapp.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.betroyaleapp.entities.User;
@Service
@Transactional
public class UserDaoImpl implements UserDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public User findById(int userId) {
		return em.find(User.class, userId);
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
		
		
		
		
		return null;
	}

}
