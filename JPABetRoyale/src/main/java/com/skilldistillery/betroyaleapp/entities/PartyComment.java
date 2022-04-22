package com.skilldistillery.betroyaleapp.entities;

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
}
