<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="static/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">

</head>
<style>
.body{
background
}
</style> 
<body>
<h1>Here</h1>
<jsp:include page="Bootstrap.html" />
<jsp:include page="Components/navbar.jsp" />



<!-- nav bar edit for searching and logging in/registering a user -->




<button type="button" class="btn btn-primary" onclick="location.href='loadEvents.do?userId=${user.id}';">View Events</button>

<button type="button" class="btn btn-primary" onclick="location.href='getWagers.do?userId=${user.id}';">View Wagers</button>


<br>
<br>
<br>
-------------------Create a betting event---------------------------

<!-- ability to edit -->

<jsp:include page="Components/createBettableEventForm.jsp" /><br>
<br>
<br>
<br>

<!-- display not edit -->

<br>
<br>
<br>
----------------------- edit user account-----------------------------------

<!-- ability to edit -->
<jsp:include page="Components/updateuser.jsp" />

<br>
<br>
<br>
-----------------------Display Leaderboard-----------------------------------

<!-- display not edit -->
<br>
<br>
<br>
----------------------- edit Betting event-----------------------------------

<jsp:include page="Components/editbettingevent.jsp" />
<br> 

<br>
<br>

git



-----------------------User Win/Loss Display Test-----------------------------------------

<br>
<%-- <input type ="button" onclick="location.href='profiledisplay.do?userId=${userId}'" value="Win-Loss-Ratio">
			<div class="event-card"
				onclick="location.href='profiledisplay.do?userId=${userId}';">
<jsp:include page="Components/profiledisplay.jsp" /> --%>

<br>
<br>


</body>
</html>