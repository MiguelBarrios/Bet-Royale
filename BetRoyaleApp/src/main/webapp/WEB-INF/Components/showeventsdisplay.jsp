<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="main-container">
	<c:forEach items="${events}" var="e">
    	${e.name}
	</c:forEach>
	<!--------------------------------- Card ------------------------------->

	<div class="event-card">
		<div class="event-image-container">
			<img class="col bet-event-img"
				src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
				width="75px" height="75px"></img>
		</div>
		<div class="event-info-container">
			<div class="category-container">
				<div class="tag category">sports</div>
				<div class="tag sub-category">football</div>
				<div class="tag sub-category">esports</div>
			</div>
			<div>
				<h3>Who will win the superbowl</h3>
			</div>
		</div>
	</div>
	<!--------------------------------- Card ------------------------------->
	<div class="event-card">
		<div class="event-image-container">
			<img class="col bet-event-img"
				src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
				width="75px" height="75px"></img>
		</div>
		<div class="event-info-container">
			<div class="category-container">
				<div class="tag category">sports</div>
				<div class="tag sub-category">football</div>
				<div class="tag sub-category">esports</div>
			</div>
			<div>
				<h3>This is Okay</h3>
			</div>
		</div>
	</div>
	<!--------------------------------- Card ------------------------------->
	
</div>
