<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    


<form action="getWager.do" method="GET">

<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="submit" id="wager" name="wager" value="Get All Users Wagers"/>

</form>


<ul>
	<li><c:forEach var="w" items="${wager}">
					${w.betAmount} 
					
					
				
				</c:forEach></li>
	</ul>


