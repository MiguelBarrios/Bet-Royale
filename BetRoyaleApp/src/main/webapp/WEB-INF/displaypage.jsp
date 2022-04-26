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

<%-- <jsp:include page="Bootstrap.html"/>
 --%>
 
 <jsp:include page="Components/navbar.jsp"/>

<br>
<br>
<br>

<h2>Betting Event Info</h2>

<input type="hidden" id="id" name="id" value="${user.id}"/>
<input type="hidden" id="contenderId" value="${contender.id}"/>
<input type="hidden" id="event" name="eventId" value="${event.id}"/>

<h1></h1>





</body>


    