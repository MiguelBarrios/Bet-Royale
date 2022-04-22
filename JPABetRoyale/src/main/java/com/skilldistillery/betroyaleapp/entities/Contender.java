package com.skilldistillery.betroyaleapp.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Contender {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	@Column(name="is_winner")
	private Boolean isWinner;
	
	private double odds;
	
//	@ManyToOne
//	@joinColumn(name="bettable_event_id")
//	private BettableEvent event;
	
	public Contender() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isWinner() {
		return isWinner;
	}

	public void setWinner(boolean isWinner) {
		this.isWinner = isWinner;
	}

	public double getOdds() {
		return odds;
	}

	public void setOdds(double odds) {
		this.odds = odds;
	}

	@Override
	public String toString() {
		return "Contender [id=" + id + ", name=" + name + ", description=" + description + ", isWinner=" + isWinner
				+ ", odds=" + odds + "]";
	}
}
