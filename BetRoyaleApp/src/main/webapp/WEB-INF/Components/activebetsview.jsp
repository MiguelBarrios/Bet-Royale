<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    	<form action="activeBets.do" method="GET">

<input type="submit" id="activeBetEvent" name="activeBetEvent" value="Display Active Betting Events"/>

</form>
	<ul>
	<li><c:forEach var="e" items="${activeBetEvent}">
					${e.name} 
					${e.description} 
					
				
				</c:forEach></li>
	</ul>