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

	<c:if test="${event.user.id == user.id}">
		<button type="button" class="btn btn-warning" id="edit" onclick="toggleEventForm()">EDIT</button>
		<div class="hidden" id="editEventForm">
			<jsp:include page="Components/editbettingevent.jsp" />	
		</div>
	</c:if>

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
			<h1>User wagers</h1>
			<c:forEach items="${userWagers}" var="w">
				<div class="wager">
					${w.user.username} bet ${w.betAmount} on ${w.contender.name}
				</div>	
		</c:forEach>
		</div>
		
		
		<div class="event-list-container">
		<h1>All Wagers</h1>
		<c:forEach items="${wagers}" var="w">
			<div class="wager">
				${w.user.username} bet ${w.betAmount} on ${w.contender.name}
			</div>			
		</c:forEach>
	</div>
	
	
	<div class="chat-window">
		<h1>Chat</h1>
		<div class="container darker">
  			<p>Hello. How are you today?</p>
  			<span class="time-right">11:00</span>
		</div>

		<div class="container darker">
  			<p>Hey! I'm fine. Thanks for asking!</p>
  			<span class="time-left">11:01</span>
		</div>
	</div><!------ End chat window -->


    </div><!------------------  End page body content ------------------->
    <script>
      function toggleEventForm(){
    	  document.getElementById("editEventForm").classList.toggle("hidden") 
      }
    
      function toggleContender(){
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
</body>


    