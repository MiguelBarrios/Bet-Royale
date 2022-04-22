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
@Table(name="event_comment")
public class EventComment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="comment_date")
	private LocalDateTime commentDate;
	
	@Column(name="comment_text")
	private String commentText;
	
	@Column(name="in_reply_to_id")
	private Integer inReplyToId;
	
	// bettable event id
	
	// user id
	
	public EventComment() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDateTime getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(LocalDateTime commentDate) {
		this.commentDate = commentDate;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public int getInReplyToId() {
		return inReplyToId;
	}

	public void setInReplyToId(int inReplyToId) {
		this.inReplyToId = inReplyToId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(commentDate, commentText, id, inReplyToId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventComment other = (EventComment) obj;
		return Objects.equals(commentDate, other.commentDate) && Objects.equals(commentText, other.commentText)
				&& id == other.id && inReplyToId == other.inReplyToId;
	}

	@Override
	public String toString() {
		return "EventComment [id=" + id + ", commentDate=" + commentDate + ", commentText=" + commentText
				+ ", inReplyToId=" + inReplyToId + "]";
	}
	
	
	
	
	
	
	
}
