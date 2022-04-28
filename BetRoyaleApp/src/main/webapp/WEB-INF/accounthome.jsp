<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <title>Account Info</title>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="static/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
<body class="body">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3 fixed-top">
		<a class="navbar-brand" href="#">BetRoyale</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
			aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
			<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
					</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="#">View Events</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Sign Up</a></li>

				<li class="nav-item">

					<form class="form-inline my-2 my-lg-0" action="search.do" method="GET">
						<input class="form-control mr-sm-2" type="search" name="username" placeholder="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</li>
			</ul>
		</div>
	</nav>

	<br>
	<br>
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
						  <h4>${user.firstName}</h4>
						  <p class="text-secondary mb-1">Full Stack Developer</p>
						  <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
						  <button class="btn btn-primary">Follow</button>
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


								<div class="col-md-8">
									<div class="card mb-3">
									  <div class="card-body">
										<div class="row">
										  <div class="col-sm-3">
											<h6 class="mb-0">Full Name</h6>
										  </div>
										  <div class="col-sm-9 text-secondary">
											Kenneth Valdez
										  </div>
										</div>
										<hr>
										<div class="row">
										  <div class="col-sm-3">
											<h6 class="mb-0">Email</h6>
										  </div>
										  <div class="col-sm-9 text-secondary">
											fip@jukmuh.al
										  </div>
										</div>
										<hr>
										<div class="row">
										  <div class="col-sm-3">
											<h6 class="mb-0">Phone</h6>
										  </div>
										  <div class="col-sm-9 text-secondary">
											(239) 816-9029
										  </div>
										</div>
										<hr>
										<div class="row">
										  <div class="col-sm-3">
											<h6 class="mb-0">Mobile</h6>
										  </div>
										  <div class="col-sm-9 text-secondary">
											(320) 380-4539
										  </div>
										</div>
										<hr>
										<div class="row">
										  <div class="col-sm-3">
											<h6 class="mb-0">Address</h6>
										  </div>
										  <div class="col-sm-9 text-secondary">
											Bay Area, San Francisco, CA
										  </div>
										</div>
										<hr>
										<div class="row">
										  <div class="col-sm-12">
											<a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>
										  </div>
										</div>
									  </div>
									  </div>
									  </div>
									








							</div>

							<div class="tab-pane" id="createEventview" role="tabpanel">
								<jsp:include page="Components/createBettableEventForm.jsp" />
							</div>

							<div class="tab-pane" id="leaderboardview" role="tabpanel">
							
										<table class="table table-hover text-nowrap">
								               <thead>
								                  <tr>
								                     <th scope="col">Rank</th>
								                     <th scope="col">Username</th>
								                     <th scope="col">Count</th>
								                     <th scope="col">Winnings</th>
								                  </tr>
								               </thead>
								               <tbody>
								                  <c:forEach items="${rankings}" var="entry">
								                     <tr>
								                        <th scope="row">${entry.rank}</th>
								                        <td>
								                           <span class="text-success">
								                           <i class="fas fa-caret-down me-1"></i><span>${entry.user.username} </span>
								                           </span>
								                        </td>
								                        <td>
								                              <span class="text-success">
								                              <i class="fas fa-caret-up me-1"></i><span>${entry.count}</span>
								                              </span>
								                        </td>
								                    	<td>
								                              <span class="text-success">
								                              <i class="fas fa-caret-up me-1"></i><span>${entry.total}</span>
								                              </span>
								                        </td>
								                     </tr>
								                  </c:forEach>
								               </tbody>
								        
								         </table>

						
							</div>

							<div class="tab-pane" id="myWagersview" role="tabpanel">
											
								        <div id="user-wagers-table" class="wager-table-container user-wagers">
								         <h3>User Wagers</h3>
								            <table class="table table-hover text-nowrap">
								               <thead>
								                  <tr>
								                     <th scope="col">Username</th>
								                     <th scope="col">Bet Amount</th>
								                     <th scope="col">Contender</th>
								                     <th scope="col">Payout</th>
								                  </tr>
								               </thead>
								               <tbody>
								                  <c:forEach items="${userWagers}" var="wager">
								                     <tr>
								                        <th scope="row">${wager.user.username}</th>
								                        <td>
								                           <span class="text-danger">
								                           <i class="fas fa-caret-down me-1"></i><span>${wager.betAmount}</span>
								                           </span>
								                        </td>
								                        <td>
								                           <span class="text-success">
								                           <i class="fas fa-caret-up me-1"></i><span>${wager.contender.name}</span>
								                           </span>
								                        </td>
								                        <td>
								                        	
								                           <c:if test="${wager.contender.event.completion}">
								                              <span class="text-success">
								                              <i class="fas fa-caret-up me-1"></i><span>${wager.betAmount * wager.multiplier}</span>
								                              </span>
								                           </c:if>
								                        </td>
								                     </tr>
								                  </c:forEach>
								               </tbody>
								            </table>
								         </div>
							</div>

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



<button type="button" class="btn btn-primary" onclick="location.href='loadEvents.do?userId=${user.id}';">View Events</button>

<button type="button" class="btn btn-primary" onclick="location.href='getWagers.do?userId=${user.id}';">View Wagers</button>


----------------------- edit user account-----------------------------------



<div class="card">
    <img src="avatar.png" alt="avatar" class="avatarz`"  style="width: 100%">
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
<br>
<br>
<br>
<br>
<br>
<br>

</body>
</html>

