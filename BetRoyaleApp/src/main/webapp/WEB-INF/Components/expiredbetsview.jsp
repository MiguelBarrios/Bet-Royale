<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
		<form action="expiredBets.do" method="GET">

<input type="submit" id="expiredBetEvents" name="expiredBetEvents" value="Display Expired Betting Events"/>

</form>
	
	<ul>
	<li><c:forEach var="e" items="${expiredBetEvents}">
					${e.name}
					${e.description} 
				
				</c:forEach></li>       
	</ul>