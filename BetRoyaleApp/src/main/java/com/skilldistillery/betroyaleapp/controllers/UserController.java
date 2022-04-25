package com.skilldistillery.betroyaleapp.controllers;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	public void foo(@RequestParam("number[]") List<String> to) {
		for (String number : to) {
			System.out.println(number);
		}
	}

	@RequestMapping(path = "userCreateBetEvent.do", method = RequestMethod.POST)
	public ModelAndView userCreateBetEvent(BettableEvent event, int userId, String endDate2, String[] contenderName,
			Double[] contenderOdds) {
		ModelAndView mv = new ModelAndView();
		if (userId > 0) {
			String[] data = endDate2.split("-");
			int year = Integer.parseInt(data[0]);
			int month = Integer.parseInt(data[1]);
			int day = Integer.parseInt(data[2]);
			LocalDateTime LDT = LocalDateTime.of(year, month, day, 0, 0, 0);

			event.setEndDate(LDT);
			BettableEvent newEvent = userDao.createBettableEvent(event, userId);
			
			//Event was created
			if(newEvent.getId() != 0) {
				
				
				if(contenderName.length == contenderOdds.length) {
					for(int i = 0; i < contenderName.length; ++i) {
						Contender contender = new Contender();
						contender.setName(contenderName[i]);
						contender.setOdds(contenderOdds[i]);
						contender.setEvent(newEvent);
						userDao.createContender(contender);
					}
				}
			}

			mv.addObject("event", newEvent);
			mv.setViewName("home");
			return mv;
		}

		else {
			mv.setViewName("home");
			return mv;
		}

	}


	@RequestMapping(path = "login.do", method = RequestMethod.POST)
	public String submitLogin(String username, String password, HttpSession session) {
		User user = userDao.login(username, password);

		if (user != null) {
			session.setAttribute("user", user);
			System.out.println(user);
			return "home";
		} else
			return "home";
	}

	@PostMapping(path = "createWager.do")
	public ModelAndView createWager(Model model, Wager wager, int userId, int contenderId) {
		ModelAndView mv = new ModelAndView();
		Wager newWager = userDao.createWager(wager, userId, contenderId);
		mv.addObject("wager", newWager);
		System.out.println(newWager);

		// TODO Replace with desired JSP
		mv.setViewName("home");
		return mv;
	}

	
	@GetMapping("search.do")
	public ModelAndView findByUsername(String username) {
		ModelAndView mv = new ModelAndView();
		User newUser = userDao.searchByUsername(username);
		mv.addObject("username", newUser);
		mv.setViewName("home");
		
		return mv;
	
	}
	
	
}
