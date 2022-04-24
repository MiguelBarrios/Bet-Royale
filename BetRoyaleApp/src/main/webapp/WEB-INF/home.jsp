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

	

<h1>Betting Royale </h1>

${DEBUG}


<form action="addUser.do" method="POST">
	
		
		 
		 <label for="username">Country: </label>
		 <input id="username" type="text" placeholder="username" name="username" />
		
			 <br>
			 <br> 
		<label for="password">Longitude: </label>
		 <input id="password" type="text" placeholder="password" name="password" />
		
			 <br>
			 <br> 
		<label for="firstName">Name: </label>
		
		 <input id="firstName" type="text" placeholder="firstName" name="firstName" />
			 <br>
			 <br> 
		
		
		
		<label for="lastName">State: </label>
		 <input id="lastName" type="text" placeholder="lastName" name="lastName" />
		
			 <br>
			 <br> 
		
		<label for="active">Latitude: </label>
		 <input id="active" type="text" placeholder="active" name="active" />
		
			 <br>
			 <br> 
		<label for="aboutMe">Elevation: </label>
		 <input id="aboutMe" type="text" placeholder="aboutMe" name="aboutMe" />
			 <br>
			 <br> 
		
			 <input type="submit"/>
	</form>





















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