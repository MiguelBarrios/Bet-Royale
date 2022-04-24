package com.skilldistillery.betroyaleapp.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Category {

//Variable Declarations ------------------------	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String description;
	
	
	  @ManyToMany
	  @JoinTable(name="user_has_category",
	    joinColumns=@JoinColumn(name="category_id"),
	    inverseJoinColumns=@JoinColumn(name="user_id"))
	  	private List<User> users;

//End Variable Declarations -----------------------
	
//Begin Constructors/Methods ============================
	
	public Category() {
		super();
	}
	
	public void addUser(User user) {
		if (users == null) {
			users = new ArrayList<>();
		}
		if (!users.contains(user)) {
			users.add(user);
			user.addCategory(this);
		}
	}
	
	public void removeUser(User user) {
		if (users != null && users.contains(user)) {
			users.remove(user);
			user.removeCategory(this);
		}
	}
	
//End Constructors/Methods ============================	
	
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
	
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

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
