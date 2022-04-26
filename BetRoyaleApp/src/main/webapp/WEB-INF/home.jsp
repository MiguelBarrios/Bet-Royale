<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>

</head>
<body>
<jsp:include page="Bootstrap.html" />

<jsp:include page="Components/navbar.jsp" />
<br>
	<br>
<jsp:include page="Components/createuser.jsp" />

<br>
------------------------------------------------- user login --------------

<br>
	<br>
<jsp:include page="Components/userlogin.jsp" />
	

<br>
	<br>
-----------------------Video Test-----------------------------------------
<br>

<iframe width="250" height="200" src="https://www.youtube.com/embed/l9qYeDdJzGo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>






------------------------------- Add Comment ---------------------------
<br>
	<br>

<jsp:include page="Components/addCommentForm.jsp" />

	
<br>
<br>
<br>
<br>


</body>
</html>