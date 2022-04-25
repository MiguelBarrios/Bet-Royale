package com.skilldistillery.betroyaleapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.betroyaleapp.data.UserDAO;
import com.skilldistillery.betroyaleapp.data.UserDaoImpl;
import com.skilldistillery.betroyaleapp.entities.User;

@Controller

public class HomeController {


	
	@Autowired
	private UserDAO userDao;
	
	
	
	
	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		System.out.println("in home controller");
		return "home";
	}
	
}
