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

<jsp:include page="Components/createBettableEventForm.jsp" /><br>


-----------------------Create Wager-----------------------------------------
<br>


<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />

<br>
<br>
-----------------------Show Wager-----------------------------------------

<form action="showWager.do" method="POST">

<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="submit" id="" name="showWager" value="Show"/>

</form>

-----------------------Get Wager-----------------------------------------


<form action="getWager.do" method="GET">

<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="submit" id="getWager" name="getWager" value="GetWager"/>

</form>


------------Display All User Created Betting Events----------------------


<jsp:include page="Components/usercreatedbetsview.jsp" />




</body>
</html>