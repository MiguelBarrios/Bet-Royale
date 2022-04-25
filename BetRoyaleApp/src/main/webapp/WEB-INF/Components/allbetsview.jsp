<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<form action="allBetEvents.do" method="GET">

<input type="submit" id="allbetsview" name="allbetsview" value="Display All Betting Events"/>

</form>
	
	<ol>
	<li><c:forEach var="e" items="${betEvent}">
					${e.name}
				${e.description}
			
		
				</c:forEach></li>
	</ol>