package com.skilldistillery.betroyaleapp.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.UserDAO;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

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
	
	@RequestMapping(path="updateUser.do")
	public String updateUser(Model model, User user) {
		User updatedUser = userDao.updateUser(user);
		System.out.println(updatedUser);
		//TODO Potentially Changed to "updateUser"
		return "home";
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
	
	@RequestMapping(path="createWager.do")
	public String createWager(User user, Wager wager) {
		
		Wager newWager = userDao.createWager(wager);
		System.out.println(newWager);

		//TODO Replace with desired JSP
		return "home";
		
		
	}

}
