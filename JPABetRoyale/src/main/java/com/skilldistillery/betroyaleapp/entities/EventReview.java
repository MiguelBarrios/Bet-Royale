package com.skilldistillery.betroyaleapp.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

@Entity
@Table(name = "event_review")
public class EventReview {

	@EmbeddedId
	private EventReviewId id;
	
	private int rating;
	
	private String comment;
	
	@Column(name="review_date")
	private LocalDateTime review_date;
	
	// Check this over with rob =====================
	@ManyToOne
	@JoinColumn(name="user_id")
	@MapsId(value="userId")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="bettable_event_id")
	@MapsId(value="bettableEventId")
	private BettableEvent bettableEvent;
	// check this over with rob =====================
	
	// Begin Constructors ============================
	public EventReview() {
		super();
	}
	// End Constructors ============================
	public EventReviewId getId() {
		return id;
	}

	public void setId(EventReviewId id) {
		this.id = id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public LocalDateTime getReview_date() {
		return review_date;
	}

	public void setReview_date(LocalDateTime review_date) {
		this.review_date = review_date;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public BettableEvent getBettableEvent() {
		return bettableEvent;
	}
	public void setBettableEvent(BettableEvent bettableEvent) {
		this.bettableEvent = bettableEvent;
	}
	@Override
	public int hashCode() {
		return Objects.hash(comment, id, rating, review_date);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventReview other = (EventReview) obj;
		return Objects.equals(comment, other.comment) && Objects.equals(id, other.id) && rating == other.rating
				&& Objects.equals(review_date, other.review_date);
	}

	@Override
	public String toString() {
		return "EventReview [id=" + id + ", rating=" + rating + ", comment=" + comment + ", review_date=" + review_date
				+ "]";
	}

}