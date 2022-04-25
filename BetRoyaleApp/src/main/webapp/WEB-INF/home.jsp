<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="Components/createuser.jsp" />

<br>
------------------------------------------------- user login --------------


<jsp:include page="Components/userlogin.jsp" />
	

<h1>Betting Royale </h1>





--------------------------------------------------------------------------

<h2>Create Bet Event</h2>







<div>


<form action="userCreateBetEvent.do" method="POST">
	
		<input name="userId" value="2" >User Id />
		 
		 <label for="name">New Betting Event Name: </label>
		 <input id="name" type="text" placeholder="Betting Event Name" name="name" />
			 <br>
			 <br> 
			 <label for="description ">Event Description: 
			 </label>
		 <input id="description" type="text" placeholder="Event Description" name="description" />
		
			 <br>
			 <br> <label for="endDate2">End Date: </label>
		
		 <input id="endDate2" type="text" placeholder="Event End Date" name="endDate2" />
			 <br>
			 <br> 
			 
			 <label for="active">Active </label> 
	<input id="active" type="text" placeholder="active" name="active" />
		 <br> <br> 
		 
  <input type="text" name="contenderName">
  <input type="text" name="contenderName">
  <input type="text" name="contenderName">
  
  <br>
  <br>
  <input type="text" name="contenderOdds">
  <input type="text" name="contenderOdds">
  <input type="text" name="contenderOdds">
  
			 <input type="submit"/>
	</form>

</div>


-----------------------Create Wager-----------------------------------------
<br>

<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />

<br>





















-------------------------------Display all bettable events---------------------------
	
	<ol>
	<c:forEach var="e" items="${betEvent}">
					<li>${e.name} </li>
					<li>${e.description} </li>
					<li>${e.endDate} </li>
					
				</c:forEach>
	</ol>










</body>
</html>