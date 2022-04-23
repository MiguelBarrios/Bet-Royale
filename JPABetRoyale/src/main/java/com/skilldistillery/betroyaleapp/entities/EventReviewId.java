package com.skilldistillery.betroyaleapp.entities;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EventReviewId implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//check this over with rob
	@Column(name="user_id")
	private int userId;
	
	@Column(name="bettable_event_id")
	private int bettableEventId;

	public EventReviewId() {
		super();
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getBettableEventId() {
		return bettableEventId;
	}

	public void setBettableEventId(int bettableEventId) {
		this.bettableEventId = bettableEventId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		return Objects.hash(bettableEventId, userId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventReviewId other = (EventReviewId) obj;
		return bettableEventId == other.bettableEventId && userId == other.userId;
	}

	@Override
	public String toString() {
		return "EventReviewId [userId=" + userId + ", bettableEventId=" + bettableEventId + "]";
	}
	
	

}
