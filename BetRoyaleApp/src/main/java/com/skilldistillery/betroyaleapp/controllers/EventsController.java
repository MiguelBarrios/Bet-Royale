package com.skilldistillery.betroyaleapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.EventsDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;

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
	
	
	
	
}
