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
public class Contender {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String name;
	
	private String description;
	
	@Column(name="is_winner")
	private Boolean isWinner;
	
	private double odds;
	
	@ManyToOne
	@JoinColumn(name="bettable_event_id")
	private BettableEvent event;
	
	public Contender() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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
	
	public Boolean getIsWinner() {
		return isWinner;
	}

	public void setIsWinner(Boolean isWinner) {
		this.isWinner = isWinner;
	}

	public BettableEvent getEvent() {
		return event;
	}

	public void setEvent(BettableEvent event) {
		this.event = event;
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
		Contender other = (Contender) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "Contender [id=" + id + " eventID "+ event.getId() +  ", name=" + name + ", description=" + description + ", isWinner=" + isWinner
				+ ", odds=" + odds + "]";
	}
}
