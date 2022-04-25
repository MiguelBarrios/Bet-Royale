package com.skilldistillery.betroyaleapp.controllers;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.EventsDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.EventComment;
import com.skilldistillery.betroyaleapp.entities.User;

@Controller
public class EventsController {

	@Autowired
	private EventsDAO dao;

	@GetMapping(path = {"/", "home.do"})
	public ModelAndView displayAllBettableEvents() {
		ModelAndView mv = new ModelAndView();
		System.out.println("Inside the method");
		List<BettableEvent> events = dao.displayBettableEvents();
		mv.addObject("betEvent", events);
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
		
		
		
		mv.setViewName("home");
		return mv;
	}
	
	
	
	
}
