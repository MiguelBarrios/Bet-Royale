package com.skilldistillery.betroyaleapp.entities;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {

//Variable Declarations ------------------------	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String description;

//End Variable Declarations -----------------------
	
//Begin Constructors ============================
	
	public Category() {
		super();
	}
	
//End Constructors ============================	
	
//Begin G&S %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
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


//End G&S %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

//Begin Hashcode, Equals, toString *******************************	
	
	@Override
	public int hashCode() {
		return Objects.hash(description, id, name);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return Objects.equals(description, other.description) && id == other.id && Objects.equals(name, other.name);
	}

	
//End Hashcode, Equals, toString *******************************	
	
	
}
