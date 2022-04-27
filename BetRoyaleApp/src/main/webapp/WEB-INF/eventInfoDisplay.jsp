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






<c:if test="${event.active}">
   	   <div class="place-wager-container">
      <div id="contenders">
         <c:forEach items="${event.contenders}" var="contender">
            <button type="button" class="btn btn-secondary" id = "${contender.id}" onclick="toggleContender(this.id)">${contender.name}(${contender.odds})</button>
            
         </c:forEach>
      </div>
      <form action="createWager.do" method="POST" id="create-wager-form">
         <input type="hidden" id="userId" name="userId" value="${user.id}"/>
         <label for="userId"></label>
         <input type="hidden" id="contenderName" name ="contendername" placeholder="Enter Contender Id"/>
         <input type="text" id="contenderId" name="contenderId" required hidden/>
         <label for="betAmount">Bet Amount: </label>
         <input id="betAmount" type="text" placeholder="Bet Amount" name="betAmount" />
         <input type="submit"/>
      </form>
   </div>
</c:if>




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
		<h1>Comments</h1>
		<c:forEach items="${comments}" var="comment">
				<div class="container darker">
  			<p>${comment.commentText}</p>
  			<span class="time-left">${comment.commentDate}</span>
		</div>
			
		</c:forEach>
		
	<form action="addComment.do">
  		<div class="form-group">
  			<input type="hidden" name="userId" value="${user.id}" /> 
			<input type="hidden"name="eventId" value="${event.id}" /> 
    		<input type="text" name="commentText" class="form-control" id="formGroupExampleInput" placeholder="comment">
	  		<input type="submit" name="add Comment" />
	  	</div>
</form>

	</div><!------ End chat window -->


    </div><!------------------  End page body content ------------------->
      <script>
         function toggleEventForm(){
          document.getElementById("editEventForm").classList.toggle("hidden")
         }

         function toggleContender(clicked_id){
           let container = document.getElementById("contenders");
           let children = container.children;
           for(var i = 0; i < children.length; ++i){
            var child = children[i];
            var contenderId = child.id;
            if(contenderId == clicked_id){
              if(child.classList.contains("btn-secondary")){
                child.classList.add("btn-primary");
                child.classList.remove("btn-secondary")
                document.getElementById("contenderId").value = clicked_id;
                console.log(document.getElementById("contenderId"));
              }
            }
            else{
              child.classList.remove("btn-primary")
              child.classList.add("btn-secondary")

            }

           }


         }
      </script>
</body>


    