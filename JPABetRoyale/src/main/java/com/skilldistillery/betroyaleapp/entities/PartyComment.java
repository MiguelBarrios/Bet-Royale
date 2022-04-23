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
@Table(name="party_comment")
public class PartyComment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="comment_date")
	private LocalDateTime commentDate;
	
	@Column(name="comment_text")
	private String commentText;
	
	@Column(name="user_id")
	private Integer userId;
	
	@Column(name="viewing_party_id")
	private Integer viewingPartyId;
	
	@Column(name="in_reply_to")
	private Integer inReplyTo;

	public PartyComment() {
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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getViewingPartyId() {
		return viewingPartyId;
	}

	public void setViewingPartyId(int viewingPartyId) {
		this.viewingPartyId = viewingPartyId;
	}

	public int getInReplyTo() {
		return inReplyTo;
	}

	public void setInReplyTo(int inReplyTo) {
		this.inReplyTo = inReplyTo;
	}

	@Override
	public int hashCode() {
		return Objects.hash(commentDate, commentText, id, inReplyTo, userId, viewingPartyId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PartyComment other = (PartyComment) obj;
		return Objects.equals(commentDate, other.commentDate) && Objects.equals(commentText, other.commentText)
				&& id == other.id && inReplyTo == other.inReplyTo && userId == other.userId
				&& viewingPartyId == other.viewingPartyId;
	}

	@Override
	public String toString() {
		return "PartyComment [id=" + id + ", commentDate=" + commentDate + ", commentText=" + commentText + ", userId="
				+ userId + ", viewingPartyId=" + viewingPartyId + ", inReplyTo=" + inReplyTo + "]";
	}
	
	
}
