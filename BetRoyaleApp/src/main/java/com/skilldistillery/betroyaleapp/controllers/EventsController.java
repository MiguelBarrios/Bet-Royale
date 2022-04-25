package com.skilldistillery.betroyaleapp.controllers;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.x.protobuf.MysqlxResultset.FetchSuspendedOrBuilder;
import com.skilldistillery.betroyaleapp.data.EventsDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.EventComment;
import com.skilldistillery.betroyaleapp.entities.User;

@Controller
public class EventsController {

	@Autowired
	private EventsDAO dao;

//	@GetMapping(path = {"allBetEvents.do"})
//	public ModelAndView displayAllBettableEvents() {
//		ModelAndView mv = new ModelAndView();
//		List<BettableEvent> events = dao.displayBettableEvents();
//		mv.addObject("betEvent", events);
//		mv.setViewName("Components/activebetsview");
//		
//		return mv;
//		
//	}
	
//	@GetMapping(path = {"/", "home.do"})
//	public ModelAndView displayActiveBettableEvents() {
//		ModelAndView mv = new ModelAndView();
//		List<BettableEvent> events = dao.displayActiveBettableEvents();
//		mv.addObject("activeBetEvent", events);
//		mv.setViewName("home");
//		 
//		return mv;
//		
//	}
	
//	@GetMapping(path = {"/", "home.do"})
//	public ModelAndView displayExpiredBettableEvents() {
//		ModelAndView mv = new ModelAndView();
//		List<BettableEvent> events = dao.displayExpiredBettableEvents();
//		mv.addObject("expiredBetEvents", events);
//		mv.setViewName("Components/expiredbetsview");
//		
//		return mv;
//		
//	}
	
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
		mv.setViewName("Components/usercreatedbetsview");
		
		return mv;
		
	}
	
	
	
	
	
}
