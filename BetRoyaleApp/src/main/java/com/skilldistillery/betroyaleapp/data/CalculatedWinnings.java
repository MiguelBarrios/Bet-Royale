package com.skilldistillery.betroyaleapp.data;

public class CalculatedWinnings {

	private int userId;
	private double count = 0;
	private double total = 0;

	public CalculatedWinnings(int userId, double count, double total) {
		super();
		this.userId = userId;
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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "CalculatedWinnings [userId=" + userId + ", count=" + count + ", total=" + total + "]";
	}

}
