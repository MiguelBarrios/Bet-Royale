<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payout Display</title>
<link rel="stylesheet" href="css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>


<body>

	<jsp:include page="Bootstrap.html"/>

<div class="event-list-container">
		<h1>List of Payouts</h1>
		<c:forEach items="${events}" var="e">
			
			<c:if test="${not e.active}">
			
			<c:forEach items="${wager}" var="w">
			${e.name}
			${e.description}
			<c:if test="${e.contender.isWinner}">
			${w.betAmount(w.multiplier)}
			</c:if>
			</c:forEach>
				<!--------------------------------- Card ------------------------------->
				<!--------------------------------- Card ------------------------------->
			</c:if>
		</c:forEach>
	</div>

</body>
</html>