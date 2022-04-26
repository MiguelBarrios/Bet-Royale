<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
  
  
<form action="displayUserCreatedEvents.do" method="GET">

<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="submit" id="userId" name="userEvents" value="Display User Created Betting Events"/>

</form>




<ul>
	<li><c:forEach var="u" items="${userEvents}">
					${u.name}
				
				</c:forEach></li>
	</ul> 
