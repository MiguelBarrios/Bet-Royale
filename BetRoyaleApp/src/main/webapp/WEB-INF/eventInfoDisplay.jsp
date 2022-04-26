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
      <h3>UFC asdfasdfadf sdfsdf sdf </h3>
      <p>Discriptons lskdjflksj</p>
      <div>Date Created</div>
      <div>Close Date</div>
      <div>active</div>
      <div>completions</div>
      <div class="event-contenders">
        <div>contender 1</div>
        <div>contender 2</div>
        <div>contender 3</div>
        <div>contender n</div>
      </div>
    </div>


    <div class="place-wager-container">
      <div class="contenders">
        <button type="button" class="btn btn-secondary" id = "contenderA" onclick="toggleContender(this.id)">Contender a</button>
        <button type="button" class="btn btn-secondary" id = "contenderB" onclick="toggleContender(this.id)">Contender b</button>
        <button type="button" class="btn btn-secondary" id="contenderC" onclick="toggleContender(this.id)">Contender c</button>
      </div>

    </div>

    <form action="createWager.do" method="POST" id="create-wager-form">
        <input type="hidden" id="userId" name="userId" value="${user.id}"/>
        <label for="userId"></label>
        <label for="contenderId">Select Your Contender</label>
        <input type="text" id="contenderName" name ="contendername" placeholder="Enter Contender Id"/>
        <input type="hidden" id="contenderId" name="contenderId" value="${user.id}"/>
        <label for="betAmount">Bet Amount: </label>
        <input id="betAmount" type="text" placeholder="Bet Amount" name="betAmount" />
        <input type="submit"/>
    </form>



    </div><!------------------  End page body content ------------------->
    <script>
      function toggleContender(clicked_id){
        contender = document.getElementById(clicked_id).innerHTML;
        document.getElementById("contenderName").value = contender;
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


    