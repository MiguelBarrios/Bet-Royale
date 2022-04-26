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
<h1>Display Test Page</h1>

<jsp:include page="Bootstrap.html"/>


<%-- <jsp:include page="Components/navbar.jsp"/>
 --%>
 
<br>
<br>
<br>

<h2>Betting Event Info</h2>

<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="hidden" id="eventId" name="eventId" value="${event.id}"/>


<h1>${event.name}</h1>



-----------------------Create Wager-----------------------------------------


<!-- ability to edit -->

<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />


<br>
<br>
<br>


</body>


    