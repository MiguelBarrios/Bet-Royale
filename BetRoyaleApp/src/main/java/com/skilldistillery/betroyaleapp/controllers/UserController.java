package com.skilldistillery.betroyaleapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.UserDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Contender;
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
	
	
	
	@PostMapping(path = "userCreateBetEvent.do")
	public ModelAndView userCreateBetEvent(BettableEvent event, int userId) {
		ModelAndView mv = new ModelAndView();
		if(userId > 0) {
			
		BettableEvent newEvent = userDao.createBettableEvent(event, userId);
		mv.addObject("event", newEvent);
		mv.setViewName("home");
		return mv;
		}
		
		else {
			mv.setViewName("home");
			return mv;
		}
		
	}
	
	
	
	@PostMapping(path = "createContender.do")
	public ModelAndView userCreateContender(Contender contender) {
		ModelAndView mv = new ModelAndView();
		Contender newContender = userDao.createContender(contender);
		mv.addObject("contender", newContender);
		mv.setViewName("home");
		
		return mv;
	}
	

	
	
}
