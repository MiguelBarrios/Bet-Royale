<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="login.do" method="POST">
	<label for="username">UserName:</label><br>
	<input type="text" name="username"/> <br>
	<label for="password">Password</label><br>
	<input type="text" name="password"/> <br>
	<input type="submit" />
</form>