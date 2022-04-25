package com.skilldistillery.betroyaleapp.data;

import com.skilldistillery.betroyaleapp.entities.User;

public class CalculatedWinnings {

	private User user;
	private double count = 0;
	private double total = 0;

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

	@Override
	public String toString() {
		return "CalculatedWinnings [userId=" + user.getUsername() + ", count=" + count + ", total=" + total + "]";
	}

}
