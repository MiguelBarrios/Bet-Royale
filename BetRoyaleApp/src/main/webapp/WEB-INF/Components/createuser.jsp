<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form action="addUser.do" method="POST">
	<label for="username">Username: </label> <input id="username"
		type="text" placeholder="username" name="username" /> <br> <br>
	<label for="password">password: </label> <input id="password"
		type="text" placeholder="password" name="password" /> <br> <br>
	<label for="firstName">First Name: </label> <input id="firstName" type="text"
		placeholder="firstName" name="firstName" /> <br> <br> <label
		for="lastName">Lastname: </label> <input id="lastName" type="text"
		placeholder="lastName" name="lastName" /> <br> <br> <label
		for="active">Active </label> <input id="active" type="text"
		placeholder="active" name="active" /> <br> <br> <label
		for="aboutMe">About me </label> 
		<input id="aboutMe" type="text"
		placeholder="aboutMe" name="aboutMe" /> <br> <br>
		
		<input
		type="submit" />
</form>
