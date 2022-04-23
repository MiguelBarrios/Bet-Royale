package com.skilldistillery.betroyaleapp.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bettable_event")
public class BettableEvent {
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	@Id
	private int id;
	
	private String name;
	
	private String description;
	
	@Column(name="image_url")
	private String imageURL;
	
	@Column(name="end_date")
	private LocalDateTime endDate;
	
	@Column(name="date_created")
	private LocalDateTime dateCreated;
	
	private Boolean active;
	
	private Boolean completion;


	public BettableEvent() {
		super();
	}


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


	public String getImageURL() {
		return imageURL;
	}


	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}


	public LocalDateTime getEndDate() {
		return endDate;
	}


	public void setEndDate(LocalDateTime endDate) {
		this.endDate = endDate;
	}


	public LocalDateTime getDateCreated() {
		return dateCreated;
	}


	public void setDateCreated(LocalDateTime dateCreated) {
		this.dateCreated = dateCreated;
	}


	public Boolean getActive() {
		return active;
	}


	public void setActive(Boolean active) {
		this.active = active;
	}


	public Boolean getCompletion() {
		return completion;
	}


	public void setCompletion(Boolean completion) {
		this.completion = completion;
	}


	@Override
	public String toString() {
		return "BettableEvent [id=" + id + ", name=" + name + ", description=" + description + ", imageURL=" + imageURL
				+ ", endDate=" + endDate + ", dateCreated=" + dateCreated + ", active=" + active + ", completion="
				+ completion + "]";
	}


	@Override
	public int hashCode() {
		return Objects.hash(active, completion, dateCreated, description, endDate, id, imageURL, name);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BettableEvent other = (BettableEvent) obj;
		return Objects.equals(active, other.active) && Objects.equals(completion, other.completion)
				&& Objects.equals(dateCreated, other.dateCreated) && Objects.equals(description, other.description)
				&& Objects.equals(endDate, other.endDate) && id == other.id && Objects.equals(imageURL, other.imageURL)
				&& Objects.equals(name, other.name);
	}
	
	
	
	
	
	
}


	
	


