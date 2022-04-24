<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="Components/createuser.jsp" />

<br>
------------------------------------------------- user login --------------


<jsp:include page="Components/userlogin.jsp" />
	

<h1>Betting Royale </h1>





--------------------------------------------------------------------------

<h2>Create Bet Event</h2>



<div>
<form action="userCreateBetEvent.do" method="POST">
	
	
		 
		 <label for="name">New Betting Event Name: </label>
		 <input id="name" type="text" placeholder="Betting Event Name" name="name" />
		
			 <br>
			 <br> 
		<label for="description ">Event Description: </label>
		 <input id="description" type="text" placeholder="Event Description" name="description" />
		
			 <br>
			 <br> 
		<label for="endDate">End Date: </label>
		
		 <input id="endDate" type="text" placeholder="Event End Date" name="endDate" />
			 <br>
			 <br> 
			 
	
	
		
			 <input type="submit"/>
	</form>

</div>







</body>
</html>