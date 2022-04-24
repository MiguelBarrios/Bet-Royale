package com.skilldistillery.betroyaleapp.entities;

import java.util.Objects;

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
	
	@ManyToOne
	@JoinColumn(name="contender_id")
	private Contender contender;
	
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

	public Contender getContender() {
		return contender;
	}

	public void setContender(Contender contender) {
		this.contender = contender;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Wager other = (Wager) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "Wager [id=" + id + ", betAmount=" + betAmount + ", multiplier=" + multiplier + ", contender="
				+ contender.getName() + ", user=" + user.getUsername() + "]";
	}
	
	
	

}
