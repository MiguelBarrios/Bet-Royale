<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>



<body>

<jsp:include page="Bootstrap.html"/>


<jsp:include page="Components/navbar.jsp"/>

    <div class="body-content">

    <div class="event-info-container">
      <img class="col bet-event-img" src="https://avatars.githubusercontent.com/u/34669927?s=40&amp;v=4" width="75px" height="75px">
      <h3>(${event.id})${event.name}</h3>
      <p>${event.description}</p>
       <div>${event.endDate}</div>
     <div>${event.dateCreated}</div>
   		<div>${event.active}</div>
      <div>${event.completion}</div>
      <div>active</div>
      <div>completions</div>
      <div class="event-contenders">
      	<c:forEach items="${event.contenders}" var="contender">
      		<div>${contender.name}</div>
      	</c:forEach>
      </div>
    </div>


    <div class="place-wager-container">
      <div class="contenders">
      	<c:forEach items="${event.contenders}" var="contender">
      	        <button type="button" class="btn btn-secondary" id = "${contender.id}" onclick="toggleContender(this.id)">${contender.name}</button>
      	</c:forEach>
      </div>

    </div>

    <form action="createWager.do" method="POST" id="create-wager-form">
        <input type="hidden" id="userId" name="userId" value="${user.id}"/>
        <label for="userId"></label>
        <label for="contenderId">Select Your Contender</label>
        <input type="text" id="contenderName" name ="contendername" placeholder="Enter Contender Id"/>
        <input type="hidden" id="contenderId" name="contenderId" value="0"/>
        <label for="betAmount">Bet Amount: </label>
        <input id="betAmount" type="text" placeholder="Bet Amount" name="betAmount" />
        <input type="submit"/>
    </form>


	<!---------------- List al wagers for this event -------------->
		<div class="event-list-container">
		<h1>Wagers</h1>
		<c:forEach items="${wagers}" var="w">
			
			<div>${w.contender.name} bet:${w.betAmount} User:${w.user.id}</div>
		</c:forEach>
	</div>


    </div><!------------------  End page body content ------------------->
    <script>
      function toggleContender(clicked_id){
        var contender = document.getElementById(clicked_id).innerHTML;
        document.getElementById("contenderName").value = contender;
        var contenderBtn = document.getElementById(clicked_id);
		
        var id = document.getElementById(clicked_id).id;
		
        
        
        
        if(contenderBtn.classList.contains("btn-secondary")){
          contenderBtn.classList.remove("btn-secondary")
          contenderBtn.classList.add("btn-primary");
          document.getElementById("contenderId").value = id;
        }else{
          contenderBtn.classList.remove("btn-primary");
          contenderBtn.classList.add("btn-secondary");
          document.getElementById("contenderName").value = "";
        }

      }
    </script>
 

<%-- <h2>Betting Event Info</h2>




<input type="hidden" id="userId" name="userId" value="${user.id}"/>
<input type="hidden" id="eventId" name="eventId" value="${event.id}"/>


<h1>${event.name}</h1>



-----------------------Create Wager-----------------------------------------


<!-- ability to edit -->

<h2>Create Wager</h2>

<jsp:include page="Components/createwager.jsp" />
 --%>


</body>


    