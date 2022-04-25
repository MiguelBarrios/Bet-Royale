package com.skilldistillery.betroyaleapp.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

public class Client {
	
	public static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPABetRoyale");
	public static EntityManager em = emf.createEntityManager();
	
	public static void main(String[] args) {

//		List<BettableEvent> events = null;
//		String jpql = "SELECT b FROM BettableEvent b where b.completion = true";
//		try {
//			events = em.createQuery(jpql, BettableEvent.class).getResultList();
//			events.forEach(System.out::println);
//			
//		}catch(Exception e){ 
//			e.printStackTrace();
//		} 
//		
//		// check if contender data is filled
//		// get all contenders for events that are completed
//		Set<Contender> contenders = new HashSet<>();
//		for(BettableEvent event : events) {
//			for(Contender contender : event.getContenders()) {
//				contenders.add(contender);
//				System.out.println(contender);
//			}
//		}
//		
//		System.out.println("--------------------");
//		// get all wagers
//		jpql = "Select w FROM Wager w";
//		List<Wager> wagers = null;
//		try {
//			wagers = em.createQuery(jpql, Wager.class).getResultList();
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		
//		System.out.println("----------------");
//		System.out.println(wagers.size());		
//		// Filter wagers
//		List<Wager> closedWagers = new ArrayList<>();
//		for(Wager wager : wagers) {
//			if(contenders.contains(wager.getContender())){
//				closedWagers.add(wager);
//			}
//		}
//		
//		System.out.println(closedWagers.size());
//		closedWagers.forEach(System.out::println);
//		
//		
//		System.out.println("--------");
//		Map<Integer, CalculatedWinnings> results = new HashMap<>();
//		for(Wager wager : closedWagers) {
//			int userId = wager.getUser().getId();
//			CalculatedWinnings cw = null;
//			if(!results.containsKey(userId)) {
//				cw = new CalculatedWinnings(userId, 0, 0);
//				results.put(userId,cw);
//			}
//			
//			cw = results.get(userId);
//			
//			double payout = (1 / (wager.getContender().getOdds() / 100));
//			System.out.println(wager.getUser().getUsername() + " bet " + wager.getBetAmount() + " on " + wager.getContender().getName());
//			if(wager.getContender().isWinner()) {
//				cw.setCount(cw.getCount() + 1);
//				cw.setTotal(cw.getTotal() + payout + wager.getBetAmount());
//				System.out.println(wager.getUser().getUsername() + " won " + (payout + wager.getBetAmount()));
//			}
//			else {
//				cw.setCount(cw.getCount() - 1);				
//				cw.setTotal(cw.getTotal() - wager.getBetAmount());
//				System.out.println(wager.getUser().getUsername() + " lost " + wager.getBetAmount());
//			}
//		}
//		
//		System.out.println("-------------------------");
//		for(int key : results.keySet()) {
//			User user = em.find(User.class, key);
//			double numberOfTimeCorrect = results.get(key).getCount();
//			double totalProfit = results.get(key).getTotal();
//			System.out.printf("%s wins: %.2f profit: %.2f\n", user.getUsername(), numberOfTimeCorrect, totalProfit);
//		}
//		
//		System.out.println("EOP");
//		
//		
//	
		
	
		
	}
	
}
