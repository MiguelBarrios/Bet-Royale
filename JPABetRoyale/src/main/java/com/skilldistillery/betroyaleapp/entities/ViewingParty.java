package com.skilldistillery.betroyaleapp.entities;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="viewing_party")
public class ViewingParty {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	
	private String description;
	
	@Column(name="start_date")
	private LocalDate startDate;
	
	@Column(name="start_time")
	private LocalTime startTime;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="create_date")
	private LocalDate createDate;
	
	@Column(name="max_attendees")
	private Integer maxAttendees;
	

	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="bettable_event_id")
	private BettableEvent event;
	
	@ManyToMany
	@JoinTable(name="user_has_viewing_party",
	joinColumns=@JoinColumn(name="viewing_party_id"),
	inverseJoinColumns=@JoinColumn(name="user_id")
	)
	private List<User> users;
	
	public ViewingParty() {}
	
	public void addUser(User user) {
		if(user == null) {
			users = new ArrayList<>();
		}
		
		if(!users.contains(user)) {
			users.add(user);
			//TODO: uncomment when user side finished 
			//user.addViewingParty()
		}
	}
	
	public void removeUser(User user) {
		if(users != null && users.contains(user)) {
			users.remove(user);
			//TODO: uncomment when user side finished
			//user.removeViewingParty(this);
		}
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalTime getStartTime() {
		return startTime;
	}

	public void setStartTime(LocalTime startTime) {
		this.startTime = startTime;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public Integer getMaxAttendees() {
		return maxAttendees;
	}

	public void setMaxAttendees(Integer maxAttendees) {
		this.maxAttendees = maxAttendees;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BettableEvent getEvent() {
		return event;
	}

	public void setEvent(BettableEvent event) {
		this.event = event;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
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
		ViewingParty other = (ViewingParty) obj;
		return id == other.id;
	}

	@Override
	public String toString() {
		return "ViewingParty [id=" + id + ", title=" + title + ", description=" + description + ", startDate="
				+ startDate + ", startTime=" + startTime + ", imageUrl=" + imageUrl + ", createDate=" + createDate
				+ ", maxAttendees=" + maxAttendees;
	}
	
}
