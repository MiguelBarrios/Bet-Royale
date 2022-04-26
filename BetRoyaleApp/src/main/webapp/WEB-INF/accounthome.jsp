<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>Here</h1>
<jsp:include page="Bootstrap.html" />
<jsp:include page="Components/navbar.jsp" />



<!-- nav bar edit for searching and logging in/registering a user -->


-------------------Create a betting event---------------------------

<!-- ability to edit -->

<jsp:include page="Components/createBettableEventForm.jsp" /><br>


-------------------View user profile information---------------------------

<!-- display not edit -->


----------------------- edit user account-----------------------------------

<!-- ability to edit -->
<jsp:include page="Components/updateuser.jsp" />


-----------------------Display Leaderboard-----------------------------------

<!-- display not edit -->

----------------------- edit Betting event-----------------------------------

<!-- ability to edit -->


-------------------------Display all bettable events---------------------------

<!-- EDIT CONTROLLER -->
<jsp:include page="Components/allbetsview.jsp" />

------------------------Display all active events---------------------------

<!-- EDIT CONTROLLER -->
<jsp:include page="Components/activebetsview.jsp" />

-----------------------Display all expired events---------------------------
<!-- EDIT CONTROLLER -->
<jsp:include page="Components/expiredbetsview.jsp" />



-----------------------Create Wager-----------------------------------------


<!-- ability to edit -->

<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />




-----------------------Get Wager-----------------------------------------
<!-- display not edit -->
<h2>Show All Users Wagers</h2>
<jsp:include page="Components/show.jsp" />


------------Display All User Created Betting Events----------------------

<!-- display not edit -->
<jsp:include page="Components/usercreatedbetsview.jsp" />




</body>
</html>