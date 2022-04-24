package com.skilldistillery.betroyaleapp.controllers;

import javax.servlet.http.HttpSession;

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
import com.skilldistillery.betroyaleapp.entities.Wager;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDao;

	@PostMapping(path = "createUser.do")
	public String home(Model model, User user) {
		User newUser = userDao.createUser(user);
		// DEBUG
		System.out.println(newUser);
		return "home";
	}

	@RequestMapping(path = "updateUser.do")
	public String updateUser(Model model, User user) {
		User updatedUser = userDao.updateUser(user);
		System.out.println(updatedUser);
		// TODO Potentially Changed to "updateUser"
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
	

	@RequestMapping(path = "login.do", method = RequestMethod.POST)
	public String submitLogin(String username, String password, HttpSession session ) {
		User user = userDao.login(username, password);

		if (user != null) {
			session.setAttribute("user", user);
			System.out.println(user);
			return "home"; 
		} else
			return "home";
	}

	@PostMapping(path = "createWager.do")
	public ModelAndView createWager(Wager wager, int userId) {
		ModelAndView mv = new ModelAndView();
		Wager newWager = userDao.createWager(wager, userId);
		mv.addObject("wager", newWager);
		System.out.println(newWager);

		// TODO Replace with desired JSP
		return mv;
	}


	
	
}
