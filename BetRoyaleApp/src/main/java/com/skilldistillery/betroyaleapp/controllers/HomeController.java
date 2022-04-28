package com.skilldistillery.betroyaleapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.betroyaleapp.data.UserDAO;

@Controller

public class HomeController {

	@Autowired
	private UserDAO userDao;
	
	
	@RequestMapping(path = { "/", "splash.do" })
	public String home() {
		System.out.println("in home controller");
		return "splashPage";
	}
	
//	@RequestMapping(path = {"aboutus.do" })
//	public String aboutus() {
//		System.out.println("in home controller");
//		return "aboutus";
//	}
	
	
	 
}
