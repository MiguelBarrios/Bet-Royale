package com.skilldistillery.betroyaleapp.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.betroyaleapp.data.UserDAO;
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
	
	@RequestMapping(path="updateUser.do")
	public String updateUser(Model model, User user) {
		User updatedUser = userDao.updateUser(user);
		System.out.println(updatedUser);
		//TODO Potentially Changed to "updateUser"
		return "home";
	}
	
	@RequestMapping("login.do")
	public ModelAndView login(User user, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		user = new User();
		if( session.getAttribute("user") != null) {
			mv.setViewName("redirect:index.do");
		}
		else {
			mv.addObject("userLogin", user);
			mv.setViewName("login");
		}
	return mv;
		}

	
	

}
