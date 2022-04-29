package com.skilldistillery.betroyaleapp.client;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.User;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {
		

//		List<Object[]> res = null;
//		String jpql = "SELECT w.user.id, w.betAmount, w.multiplier, w.contender.isWinner, w.contender.odds FROM Wager w where w.contender.event.completion = true";
//		 
//		try {
//			res = em.createQuery(jpql).getResultList();
//		}catch(Exception e){ 
//			e.printStackTrace();
//		} 
//		
//		Map<Integer, CalculatedWinnings> map = new HashMap<>();
//		for(int i = 0; i < res.size(); ++i){
//			Object[] row = res.get(i);
//			int userId = (int) row[0];
//			double amount = (double) row[1];
//			boolean isWinner = (boolean) row[3];
//			double odds = (double)row[4];
//			double payout = (1 / (odds / 100));
//			
//			if(!map.containsKey(userId)) {
//				User user = new User();
//				user.setId(userId);
//				map.put(userId, new CalculatedWinnings(user, 0, 0));
//			}
//			
//			if(isWinner) {
//				map.get(userId).setCount(map.get(userId).getCount() + 1);
//				map.get(userId).setTotal(map.get(userId).getTotal() + payout + amount);
//			}
//			else {
//				map.get(userId).setCount(map.get(userId).getCount() - 1);				
//				map.get(userId).setTotal(map.get(userId).getTotal() - amount);
//			}	
//		}
//		
//		List<CalculatedWinnings> finalResults = new ArrayList<>(map.values());
//		
//		Collections.sort(finalResults,  (a,b) ->  {
//			if(((int)b.getCount() - (int)a.getCount()) == 0) 
//				return (int)b.getTotal() - (int)a.getTotal();
//			else 
//				return (int)b.getCount() - (int)a.getCount();
//		});
//		finalResults.forEach(System.out::println);
		
		
	}
	
}
