package com.skilldistillery.betroyaleapp.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Wager {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="bet_amount")
	private double betAmount;
	
	private double multiplier;
	
//	@ManyToOne
//	@JoinColumn(name="contender_id")
//	private Contender contender;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	
	public Wager() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getBetAmount() {
		return betAmount;
	}

	public void setBetAmount(double betAmount) {
		this.betAmount = betAmount;
	}


	public double getMultiplier() {
		return multiplier;
	}

	public void setMultiplier(double multiplier) {
		this.multiplier = multiplier;
	}
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Wager [id=" + id + ", betAmount=" + betAmount + ", multiplier=" + multiplier + ", user=" + user + "]";
	}
	
	
	

}
