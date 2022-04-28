<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" href="static/css/reset.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
         integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <link rel="stylesheet" href="css/style.css">
   </head>
   <style>
      body{
  margin-top:20px;
  color: #1a202c;
  text-align: left;
  background-color: #444647;    
}
.main-body {
  padding: 15px;
}
.card {
  box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: rgb(255, 255, 255);
  background-clip: border-box;
  border: 0 solid rgba(0,0,0,.125);
  border-radius: .25rem;
}

.card-body {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1rem;
}

.gutters-sm {
  margin-right: -8px;
  margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
  padding-right: 8px;
  padding-left: 8px;
}
.mb-3, .my-3 {
  margin-bottom: 1rem!important;
}

.bg-gray-300 {
  background-color: #ffffff;
}
.h-100 {
  height: 100%!important;
}
.shadow-none {
  box-shadow: none!important;
}


   </style>
   <body>
      <h1>Here</h1>
      <body class="body">
         <jsp:include page="Bootstrap.html" />
         <jsp:include page="Components/navbar.jsp" />
         <br>
         <br>
         <div class="account-profile-view">
         <div class="container">
         <div class="main-body">
         <div class="row gutters-sm">
         <div class="col-md-4 mb-3">
            <div class="card">
               <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                     <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                     <div class="mt-3">
                        <h4>${user.fullName}</h4>
                        <p class="text-secondary mb-1">Full Stack Developer</p>
                        <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                        
                        <button class="btn btn-primary" type="button" onclick="location.href='loadEvents.do?userId=${user.id}';">View Events</button>
                        
                        <button class="btn btn-outline-primary">Message</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="card mt-3" >
               <div class="list-group" id="myList" role="tablist">
                  <a onclick="loadDisplay(this.id)" id="loadAllBets" class="list-group-item list-group-item-action-active" data-bs-toggle="list"  href="allBetEvents.do" role="tab" >My Profile</a>
                  <a onclick="loadDisplay(this.id)" id="createEvent" class="list-group-item list-group-item-action" data-bs-toggle="list" href="userCreateBetEvent.do" role="tab">Create a Betting Event</a>
                  <a onclick="loadDisplay(this.id)" id="leaderboard" class="list-group-item list-group-item-action" data-bs-toggle="list" href="getLeaderboard.do" role="tab">View Leaderboard</a>
                  <a onclick="loadDisplay(this.id)" id="myWagers" class="list-group-item list-group-item-action" data-bs-toggle="list" href="getWagers.do" role="tab">View My Wagers</a>
                  <a onclick="loadDisplay(this.id)" id="updateUser" class="list-group-item list-group-item-action" data-bs-toggle="list" href="updateUser.do" role="tab">Edit Profile</a>
               </div>
            </div>
         </div>
         <div class="col-md-8">
            <div class="card mb-3">
               <!-- <div class="container"> -->
               <div class="card-body" id="View">
                  <div class="tab-content">
                     <div class="tab-pane active" id="loadAllBetsview" role="tabpanel">
                        <div class="col-md-12">
                           <div class="card mb-3">
                              <div class="card-body">
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                      ${user.fullName}
                                    </div>
                                 </div>
                                 <hr>
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                       ${user.email}
                                    </div>
                                 </div>
                                 <hr>
                                 
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <h6 class="mb-0">Username</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                       ${user.username }
                                    </div>
                                 </div>
                                 <hr>
                                 <!-- <div class="row">
                                    <div class="col-sm-3">
                                       <h6 class="mb-0">Mobile</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                       (320) 380-4539
                                    </div>
                                 </div>
                                 <hr> -->
                                 <div class="row">
                                    <div class="col-sm-3">
                                       <h6 class="mb-0">About Me</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                       ${user.aboutMe} 
                                    </div>
                                 </div>
                               <hr>
                                 <!-- <div class="row">
                                    <div class="col-sm-12">
                                       <a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>
                                    </div>
                                 </div>  -->
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="tab-pane" id="createEventview" role="tabpanel">
                        <jsp:include page="Components/createBettableEventForm.jsp" />
                     </div>
                     <div class="tab-pane" id="leaderboardview" role="tabpanel">view leader board users</div>
                     <div class="tab-pane" id="myWagersview" role="tabpanel">lets see my wagers</div>
                     <div class="tab-pane" id="updateUserview" role="tabpanel">
                        <jsp:include page="Components/updateuser.jsp" />
                     </div>
                  </div>
                  <script>
                     function loadDisplay(clicked_id){
                     	console.log(clicked_id)
                     	var selectedview = clicked_id + "view";
                     	var views = ["loadAllBetsview","createEventview","leaderboardview","myWagersview","updateUserview"];
                     	for(let i=0; i<views.length; i++){ 
                     		if(views[i] == selectedview){
                     			document.getElementById(selectedview).classList.add("active");
                     
                     		}else{
                     			document.getElementById(views[i]).classList.remove("active");
                     		}
                     	}
                     
                     	var viewCard = document.getElementById("View")
                     	console.log(viewCard)
                      }
                     
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
               </div>
            </div>
         </div>
         </div>
         </div>
         </div>
         </div>
         
         <button type="button" class="btn btn-primary" onclick="location.href='getWagers.do?userId=${user.id}';">View Wagers</button>
      
         <br>
         <br>
         <br>
         <br>
         <br>
         <br>
   </body>
</html>
