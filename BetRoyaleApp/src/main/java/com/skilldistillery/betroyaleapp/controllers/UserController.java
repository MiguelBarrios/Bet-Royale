package com.skilldistillery.betroyaleapp.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@PostMapping(path = "addUser.do")
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
	
	
	@PostMapping(path = "login.do")
	public String submitLogin(String username, String password,HttpSession session ) {
		User user = userDao.submitLogin(username, password);

		if (user != null) {
			session.setAttribute("user", user);
			System.out.println(user.getUsername());
			return "home"; 
		} else
			//TODO replace with desired JSP
			return "home";
	}
	
	@PostMapping(path="createWager.do")
	public ModelAndView createWager(Wager wager) {
		ModelAndView mv = new ModelAndView();
		Wager newWager = userDao.createWager(wager);
		mv.addObject("wager", newWager);
		System.out.println(newWager);

		//TODO Replace with desired JSP
		return mv;
		
		
	}

}
