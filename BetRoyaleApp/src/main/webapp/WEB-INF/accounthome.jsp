<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="static/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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


<br>
<br>
<br>
-------------------Create a betting event---------------------------

<!-- ability to edit -->

<jsp:include page="Components/createBettableEventForm.jsp" /><br>
<br>
<br>
<br>

-------------------View user profile information---------------------------

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

<!-- ability to edit -->
<jsp:include page="Components/editbettingevent.jsp" />
<br> 
<br>
<br>
-------------------------Display all bettable events---------------------------

<form action="">

</form>

<jsp:include page="Components/showeventsdisplay.jsp" />

<!-- EDIT CONTROLLER -->
<jsp:include page="Components/allbetsview.jsp" />
<br>
<br>
<br>
------------------------Display all active events---------------------------

<!-- EDIT CONTROLLER -->
<jsp:include page="Components/activebetsview.jsp" />
<br>
<br>
<br>
-----------------------Display all expired events---------------------------
<!-- EDIT CONTROLLER -->
<jsp:include page="Components/expiredbetsview.jsp" />

<br>
<br>
<br>

-----------------------Create Wager-----------------------------------------


<!-- ability to edit -->

<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />
<jsp:include page="displaypage.jsp"/>


<br>
<br>
<br>

-----------------------Get Wager-----------------------------------------
<!-- display not edit -->



<h2>Show All Users Wagers</h2>
<jsp:include page="Components/show.jsp" />



<br>
<br>
<br>
------------Display All User Created Betting Events----------------------

<!-- display not edit -->
<jsp:include page="Components/usercreatedbetsview.jsp" />




</body>
</html>