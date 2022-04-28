<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Account Info</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">

<link rel="stylesheet" href="css/navstyles.css">
<link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="static/css/reset.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/accounthome.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </head>
  <body class="body">
    <jsp:include page="Components/navbar.jsp" />
    <div class="account-profile-view">
      <div class="container">
        <div class="main-body">
          <div class="row gutters-sm">
            <!-- --------  top profile ------- -->
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>${user.fullName}</h4>
                      <p class="text-secondary mb-1">${user.username }</p>
                      <button type="button" class="btn btn-primary" onclick="location.href='loadEvents.do?userId=${user.id}';">View Events</button>
                      <button type="button" class="btn btn-primary" onclick="location.href='getWagers.do?userId=${user.id}';">View Wagers</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <div class="list-group" id="myList" role="tablist">
                  <a onclick="loadDisplay(this.id)" id="loadAllBets" class="list-group-item list-group-item-action-active" data-bs-toggle="list" href="allBetEvents.do" role="tab">My Profile</a>
                  <a onclick="loadDisplay(this.id)" id="createEvent" class="list-group-item list-group-item-action" data-bs-toggle="list" href="userCreateBetEvent.do" role="tab">Create a Betting Event</a>
                  <a onclick="loadDisplay(this.id)" id="leaderboard" class="list-group-item list-group-item-action" data-bs-toggle="list" href="getLeaderboard.do" role="tab">View Leaderboard</a>
                  <a onclick="loadDisplay(this.id)" id="myWagers" class="list-group-item list-group-item-action" data-bs-toggle="list" href="getWagers.do" role="tab">View My Wagers</a>
                  <a onclick="loadDisplay(this.id)" id="updateUser" class="list-group-item list-group-item-action" data-bs-toggle="list" href="updateUser.do" role="tab">Edit Profile</a>
                </div>
              </div>
            </div>
            <!-- --------- Tab selection section ------ -->
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
                              <div class="col-sm-9 text-secondary"> ${user.fullName}</div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">${user.email}</div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Username</h6>
                              </div>
                              <div class="col-sm-9 text-secondary"> ${user.username }</div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">About Me</h6>
                              </div>
                              <div class="col-sm-9 text-secondary"> ${user.aboutMe}</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane" id="createEventview" role="tabpanel">
                      <jsp:include page="Components/createBettableEventForm.jsp" />
                    </div>
                    <!-- ----------------- Leader Board--------------------- -->
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
                                  <i class="fas fa-caret-down me-1"></i>
                                  <span>${entry.user.username} </span>
                                </span>
                              </td>
                              <td>
                                <span class="text-success">
                                  <i class="fas fa-caret-up me-1"></i>
                                  <span>${entry.count}</span>
                                </span>
                              </td>
                              <td>
                                <span class="text-success">
                                  <i class="fas fa-caret-up me-1"></i>
                                  <span>${entry.total}</span>
                                </span>
                              </td>
                            </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                    <!-- ------------------- Wagers Tab ----------------------->
                    <div class="tab-pane" id="myWagersview" role="tabpanel">
                      <div class="tab-pane" id="tabss" role="tabpanel">
                        <nav>
                          <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true"> Expired</button>
                            <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">All</button>
                          </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                          <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <!-- ---------------------- pane 1 -->
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
                                  <c:if test="${wager.contender.event.completion}">
                                    <tr>
                                      <th scope="row"> ${wager.user.username}</th>
                                      <td>
                                        <span class="text-success">
                                          <i class="fas fa-caret-down me-1"></i>
                                          <span>${wager.betAmount}</span>
                                        </span>
                                      </td>
                                      <td>
                                        <span class="text-success">
                                          <i class="fas fa-caret-up me-1"></i>
                                          <span>${wager.contender.name}</span>
                                        </span>
                                      </td>
                                      <td>
                                        <c:if test="${wager.contender.event.completion}">
                                          <span class="text-success">
                                            <i class="fas fa-caret-up me-1"></i>
                                            <span>${wager.betAmount * wager.multiplier}</span>
                                          </span>
                                        </c:if>
                                      </td>
                                    </tr>
                                  </c:if>
                                </c:forEach>
                              </tbody>
                            </table>
                            <!-- ---------------------- end pane 1 -->
                          </div>
                          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
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
                                    <th scope="row"> ${wager.user.username}</th>
                                    <td>
                                      <span class="text-success">
                                        <i class="fas fa-caret-down me-1"></i>
                                        <span>${wager.betAmount}</span>
                                      </span>
                                    </td>
                                    <td>
                                      <span class="text-success">
                                        <i class="fas fa-caret-up me-1"></i>
                                        <span>${wager.contender.name}</span>
                                      </span>
                                    </td>
                                    <td>
                                      <c:if test="${wager.contender.event.completion}">
                                        <span class="text">
                                          <i class="fas fa-caret-up me-1"></i>
                                          <span>${wager.betAmount*wager.multiplier}</span>
                                        </span>
                                      </c:if>
                                    </td>
                                  </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane" id="updateUserview" role="tabpanel">
                      <jsp:include page="Components/updateuser.jsp" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3">
                        <i class="material-icons text-info mr-2">assignment</i>Project Status
                      </h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3">
                        <i class="material-icons text-info mr-2">assignment</i>Project Status
                      </h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    	<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous">
	
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
	
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
    <script src="scripts/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>