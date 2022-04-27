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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.betroyaleapp.data.CalculatedWinnings;
import com.skilldistillery.betroyaleapp.data.EventsDAO;
import com.skilldistillery.betroyaleapp.data.UserDAO;
import com.skilldistillery.betroyaleapp.entities.BettableEvent;
import com.skilldistillery.betroyaleapp.entities.Category;
import com.skilldistillery.betroyaleapp.entities.Contender;
import com.skilldistillery.betroyaleapp.entities.Subcategory;
import com.skilldistillery.betroyaleapp.entities.User;
import com.skilldistillery.betroyaleapp.entities.Wager;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDao;

	@Autowired
	private EventsDAO eDao;

	
	@PostMapping(path = "createUser.do")
	public ModelAndView home( User user) {
		User newUser = userDao.createUser(user);
		ModelAndView mv = new ModelAndView();
		System.out.println(newUser);
		mv.addObject("user", user);
		mv.setViewName("accounthome");
		return mv;
	}
	
	
	
	
	
	

	@PostMapping(path = "updateUser.do")
	public String updateUser(Model model, User user) {
		User updatedUser = userDao.updateUser(user);
		System.out.println(updatedUser);
		model.addAttribute(updatedUser);
		System.out.println(updatedUser);
		// TODO Potentially Changed to "updateUser"
		return "accounthome";
	}

	@PostMapping(path = "updateWager.do")
	public String updateWager(Model model, Wager wager) {
		Wager updatedWager = userDao.updateWager(wager);
		System.out.println(updatedWager);
		model.addAttribute(updatedWager);

		return "accounthome";
	}

	public void foo(@RequestParam("number[]") List<String> to) {
		for (String number : to) {
			System.out.println(number);
		}
	}

	@RequestMapping(path = "userCreateBetEvent.do", method = RequestMethod.POST)
	public ModelAndView userCreateBetEvent(BettableEvent event, int userId, String endDate2, String[] contenderName,
			Double[] contenderOdds, String[] cname, String category,
			String categorydescription) {
		ModelAndView mv = new ModelAndView();
		if (userId > 0) {
			String[] data = endDate2.split("-");
			int year = Integer.parseInt(data[0]);
			int month = Integer.parseInt(data[1]);
			int day = Integer.parseInt(data[2]);
			LocalDateTime LDT = LocalDateTime.of(year, month, day, 0, 0, 0);

			event.setEndDate(LDT);
			BettableEvent newEvent = userDao.createBettableEvent(event, userId);

			// ---- Link Contenders to categories
			if (newEvent.getId() != 0) {

				if (contenderName.length == contenderOdds.length) {
					for (int i = 0; i < contenderName.length; ++i) {
						Contender contender = new Contender();
						contender.setName(contenderName[i]);
						contender.setOdds(contenderOdds[i]);
						contender.setEvent(newEvent);
						userDao.createContender(contender);
					}
				}
			}

			System.out.println("Point 1");

			// Link Category
			Category cat = userDao.searchByCategory(category);
			System.out.println("point 2");
			if (cat == null || cat.getId() == 0) {
				System.out.println("inside herre");
				cat = new Category();
				cat.setName(category);
				cat.setDescription(categorydescription);
				System.out.println(cat);
				cat = userDao.createCategory(cat);
			}

			System.out.println("Category: " + cat);

			// ----- link subcategories to -------
			if (cname.length > 0) {
				for (int i = 0; i < cname.length; ++i) {
					Subcategory sub = new Subcategory();
					sub.setName(cname[i]);
					sub.setDescription("");
					sub.setCategory(cat);
					sub = userDao.createSubCategory(sub);
					event.addSubcategory(sub);
				}
			}

			mv.addObject("event", newEvent);
			mv.setViewName("accounthome");
			return mv;
		}

		else {
			mv.setViewName("home");
			return mv;
		}

	}

	@RequestMapping(path = "login.do", method = RequestMethod.POST)
	public ModelAndView submitLogin(String username, String password, HttpSession session) {

		ModelAndView mv = new ModelAndView();
		User user = userDao.login(username, password);

		if (user != null) {
			session.setAttribute("user", user);
			System.out.println(user);
			mv.addObject("user", user);
			mv.setViewName("accounthome");

		} else {
			mv.setViewName("home");
		}

		return mv;
	}

	@PostMapping(path = "createWager.do")
	public String createWager(int userId, int contenderId, double betAmount, RedirectAttributes redirectAttrs) {
		ModelAndView mv = new ModelAndView();
		Wager wager = new Wager();
		wager.setBetAmount(betAmount);
		wager = userDao.createWager(wager, userId, contenderId);
		redirectAttrs.addAttribute("userId", userId);
		redirectAttrs.addAttribute("eventId", wager.getContender().getEvent().getId());
		return "redirect:/loadEventPage.do";
	} 

	@GetMapping(path = "loadWager.do")
	public ModelAndView loadWagerPage(int userId, int eventId) {
		ModelAndView mv = new ModelAndView();
		Wager wagerView = userDao.findWagerById(userId);
		User user = userDao.findById(userId);
		BettableEvent event = eDao.findEventById(eventId);
		mv.addObject("event", event);
		mv.addObject("user", user);
		mv.addObject("wager", wagerView);
		mv.setViewName("accounthome");
		return mv;
	}

	@GetMapping(path = "getWagers.do")
	public ModelAndView getWager(int userId) {
		ModelAndView mv = new ModelAndView();
		User u = userDao.findById(userId);
		List<Wager> wagers = userDao.getWagers(userId);
		List<BettableEvent> events = eDao.displayBettableEvents();
		mv.addObject("events", events);
		mv.addObject("wager", wagers);
		mv.addObject("user", u);
		mv.setViewName("wagersView");
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

	@GetMapping("leaderboard.do")
	public ModelAndView getLeaderboard(int userId) {
		System.out.println("FIND ME FIX ME");
		ModelAndView mv = new ModelAndView();

		CalculatedWinnings winnings = userDao.getWinnings(userId);
		System.out.println(winnings);
		mv.addObject("winnings", winnings);
		mv.setViewName("home");
		return mv;

	}

	@GetMapping("getWagersForEvent.do")
	public ModelAndView getWagersForEvent(int eventId) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("accounthome");
		return null;
	}

}





//MEOW
