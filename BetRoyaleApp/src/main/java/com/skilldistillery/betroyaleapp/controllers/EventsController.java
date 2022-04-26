package com.skilldistillery.betroyaleapp.controllers;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.CalculatedWinnings;
import com.skilldistillery.betroyaleapp.data.EventsDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.EventComment;
import com.skilldistillery.betroyaleapp.entities.Subcategory;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

@Controller
public class EventsController {

	@Autowired
	private EventsDAO dao;
	
	
	@GetMapping("editEvent.do")
	public String goToEditPage(Model model, int eventId) {
		BettableEvent event = dao.findEventById(eventId);
		model.addAttribute("event", event);
		return "editevent";
	}
	

	@GetMapping(path = {"allBetEvents.do"})
	public ModelAndView displayAllBettableEvents() {
		ModelAndView mv = new ModelAndView();
		List<BettableEvent> events = dao.displayBettableEvents();
		mv.addObject("betEvent", events);
		mv.setViewName("home");
		 
		return mv;
		
	} 
	
	@GetMapping(path = {"activeBets.do"})
	public ModelAndView displayActiveBettableEvents() {
		ModelAndView mv = new ModelAndView();
		List<BettableEvent> events = dao.displayActiveBettableEvents();
		mv.addObject("activeBetEvent", events);
		mv.setViewName("home");
		 
		return mv;
		
	}
	
	@GetMapping(path = {"expiredBets.do"})
	public ModelAndView displayExpiredBettableEvents() {
		ModelAndView mv = new ModelAndView();
		List<BettableEvent> events = dao.displayExpiredBettableEvents();
		mv.addObject("expiredBetEvents", events);
		mv.setViewName("home");
		
		return mv;
		
	}
	
	@RequestMapping(path="addComment.do")
	public ModelAndView addComment(EventComment comment, int userId, int eventId) {
		comment.setCommentDate(LocalDateTime.now());
		BettableEvent event = dao.findEventById(eventId);
		User user = dao.findUserById(userId);
		comment.setBettableEvent(event);
		comment.setUser(user);
		System.out.println(comment);
		System.out.println(userId);
		System.out.println(eventId);
		
		ModelAndView mv = new ModelAndView();
		comment = dao.addComment(comment);
		System.out.println(comment);
		
		// TODO: add reply to comment func
		
		mv.setViewName("home");
		return mv;
	}
	
	
	@GetMapping(path = {"displayUserCreatedEvents.do"})
	public ModelAndView displayUserCreatedBettableEvents(int userId) {
		ModelAndView mv = new ModelAndView();
		User user=dao.findUserById(userId);
		System.out.println(user);
		List<BettableEvent> userCreatedEvents = dao.displayUserCreatedBettableEvents(userId);
		System.out.println(userCreatedEvents);
		mv.addObject(user);
		mv.addObject("userEvents", userCreatedEvents);
		mv.setViewName("accounthome");
		
		return mv;
		
	}
	
	
	
	
	@PostMapping("updateBetEvent.do")
	public ModelAndView updateBettableEvent(Integer [] contenderResult, Integer[] contenderIds, Integer eventId) {
		ModelAndView mv = new ModelAndView();
		//BettableEvent event = dao.findEventById(eventId);
//		System.out.println(event);
//		
//		List<Contender> contenders = event.getContenders();
		
		for (int i = 0; i < contenderIds.length; i++) {
			boolean isWinner = contenderResult[i] != 0;
			dao.updateContender(contenderIds[i], isWinner);
		}
		
		
		
		
		
	//	Contender newContender = dao.updateContender(contender.getId(), isWinner);
		//System.out.println(newContender);
	
			
		
//		for (Contender contender : contenders) {
//		boolean isWinner = (winningId == contender.getId());
			
		
		
//		event.setActive(false);
//		event.setCompletion(true);
//		dao.updateBettableEvent(event);
//		mv.addObject("event", event);
		mv.setViewName("accounthome");
//		
		return mv;
		
	}
	
	
	@GetMapping("getLeaderboard.do")
	public ModelAndView getLeaderBoard(){
		ModelAndView mv = new ModelAndView();
		Map<Integer, CalculatedWinnings> results = dao.calculateLeaderBoard();
		System.out.println("-------------------------");
		for(int key : results.keySet()) {
			User user = results.get(key).getUser();
			double numberOfTimeCorrect = results.get(key).getCount();
			double totalProfit = results.get(key).getTotal();
			System.out.printf("%s wins: %.2f profit: %.2f\n", user.getUsername(), numberOfTimeCorrect, totalProfit);
		}
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("getWagersByEventId.do")
	public ModelAndView getWagersForEvent(int eventId) {
		ModelAndView mv = new ModelAndView();
		List<Wager> wagers = dao.getWagersForEvent(eventId);

		
		mv.setViewName("accounthome");
		return mv;
	}
	
	@GetMapping("profiledisplay.do")
	public ModelAndView userWinLoss(int userId) {
		ModelAndView mv = new ModelAndView();
		Map<Integer, CalculatedWinnings> results = dao.calculateLeaderBoard();
		CalculatedWinnings cw = results.get(userId);
		mv.addObject("wrl",cw);
		mv.setViewName("profiledisplay");
		return mv;
	}
	
	@GetMapping("loadEvents.do")
	public ModelAndView loadEvents(int userId) {
		ModelAndView mv = new ModelAndView();
		List<BettableEvent> events = dao.displayBettableEvents();
		for(BettableEvent be : events) {
			List<Subcategory> sub = be.getSubcategories();
			System.out.println(sub);
		}
		
		mv.addObject("events", events);
		mv.addObject("userId", userId);
		
		mv.setViewName("eventsView");
		return mv;
	}
	
	
	@GetMapping("loadEventPage.do")
	public ModelAndView goToEventPage(int userId, int eventId) {
		ModelAndView mv = new ModelAndView();
		System.out.println("userid: " + userId + " eventId: " + eventId);
		BettableEvent event = dao.findEventById(eventId);
		User user = dao.findUserById(userId);
		mv.addObject("user", user);
		mv.addObject("event", event);
		mv.addObject("eventId", eventId);
		mv.addObject("userId", userId);
		

		mv.setViewName("eventInfoDisplay");
		return mv;
		
	}
	
	
	
	
}




