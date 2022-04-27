<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="css/style.css">
</head>
<style>
.body{
background
}
</style> 
<body>
<h1>Here</h1>
<jsp:include page="Bootstrap.html" />
<jsp:include page="Components/navbar.jsp" />

<br>
<br>
<br>
<br>


<button type="button" class="btn btn-primary" onclick="location.href='loadEvents.do?userId=${user.id}';">View Events</button>

<button type="button" class="btn btn-primary" onclick="location.href='getWagers.do?userId=${user.id}';">View Wagers</button>

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
      Add Event
      </button>
<br>
-------------------Create a betting event---------------------------



<jsp:include page="Components/createBettableEventForm.jsp" /><br>
<br>
<br>
<br>




----------------------- Display Payout-----------------------------------

<jsp:include page="Components/displayPayout.jsp" />



----------------------- edit user account-----------------------------------

<jsp:include page="Components/updateuser.jsp" />

<div class="card">
    <img src="avatar.png" alt="avatar" class="avatar"  style="width: 100%">
    <h1>John Doe</h1>
    <p class="title">CEO & Founder, Example</p>
    <p>Harvard University</p>
    <a href="#"><i class="fa fa-dribble"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-facebook"></i></a>
    <p><button>Contact</button></p>
</div>

-----------------------Display Leaderboard-----------------------------------

      <script>
         function addContender(){
           $( "#contender-names" ).append( '<input type="text" name="contenderName">' );
           $("#contender-odds").append(' <input type="number" name="contenderOdds" min="1", max="100" step="1">')
         }

         function addsubcategory(){
           $('#sub-cateory-container').append('<input type="text" name="cname">')
         }

         function toggleContender(clicked_id){
           var contender = document.getElementById(clicked_id).innerHTML;
           document.getElementById("contenderName").value = contender;
           var contenderBtn = document.getElementById(clicked_id);
           contenderBtn.id;
           var contId = document.getElementById("contenderId");
           if(contenderBtn.classList.contains("btn-secondary")){
             contenderBtn.classList.remove("btn-secondary")
             contenderBtn.classList.add("btn-primary");
           }else{
             contenderBtn.classList.remove("btn-primary");
             contenderBtn.classList.add("btn-secondary");
           }
         }

      </script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>