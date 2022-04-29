package com.skilldistillery.betroyaleapp.client;

import com.skilldistillery.betroyaleapp.entities.User;

public class CalculatedWinnings {

	
	private User user;
	private double count = 0;
	private double total = 0;
	private int rank = 0;

	public CalculatedWinnings(User user, double count, double total) {
		super();
		this.user = user;
		this.count = count;
		this.total = total;
	}

	public double getCount() {
		return count;
	}

	public void setCount(double count) {
		this.count = count;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "CalculatedWinnings [userId=" + user.getId()+ ", count=" + count + ", total=" + total + "]";
	}

}
