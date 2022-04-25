<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="addComment.do">
	<!-- Hard coded value's for now -->
	<input type="hidden" name="userId" value="2" /> 
	<input type="hidden"name="eventId" value="2" /> 
	<input type="datetime-local" id="meeting-time" name="commentDate" value="2018-06-12T19:30"min="2018-06-07T00:00" max="2100-06-14T00:00"> 
	<input type="text" name="commentText"/>
	<input type="submit" name="add Comment" />

</form>