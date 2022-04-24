package com.skilldistillery.betroyaleapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.UserDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.User;

@Controller
public class UserController {
	
	
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping(path = "addUser.do")
	public String home(Model model, User user) {
		User newUser = userDao.createUser(user);
		//DEBUG
		System.out.println(newUser);
		return "home";
	}
	
	
	

	
	
	
	
	
	
	@RequestMapping(path = "userCreateBetEvent.do")
	public ModelAndView userCreateBetEvent(BettableEvent event) {
		ModelAndView mv = new ModelAndView();
		BettableEvent newEvent = userDao.createBettableEvent(event);
		mv.addObject("event", newEvent);
		mv.setViewName("home");
		return mv;
		
	}
	
	

	
	
}
