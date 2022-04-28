<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Account Info</title>
            <link rel="stylesheet" href="static/css/reset.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
            <link rel="stylesheet" href="/resources/demos/style.css">

            <link rel="stylesheet" href="css/style.css">
            <link rel="stylesheet" href="css/accounthome.css">
            <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
            <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
            
            <script>
                $(function () {
                    $("#tabss").tabs();
                });
            </script>
           
        </head>
        <style>
        </style>

        <body class="body">
            <jsp:include page="Bootstrap.html" />
            <jsp:include page="Components/navbar.jsp" />


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
                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin"
                                                class="rounded-circle" width="150">
                                            <div class="mt-3">
                                                <h4>${user.fullName}</h4>
                                                <p class="text-secondary mb-1">${user.username }</p>
                                                <button type="button" class="btn btn-primary"
                                                    onclick="location.href='loadEvents.do?userId=${user.id}';">View
                                                    Events</button>

                                                <button type="button" class="btn btn-primary"
                                                    onclick="location.href='getWagers.do?userId=${user.id}';">View
                                                    Wagers</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mt-3">
                                    <div class="list-group" id="myList" role="tablist">

                                        <a onclick="loadDisplay(this.id)" id="loadAllBets"
                                            class="list-group-item list-group-item-action-active" data-bs-toggle="list"
                                            href="allBetEvents.do" role="tab">My
                                            Profile</a> <a onclick="loadDisplay(this.id)" id="createEvent"
                                            class="list-group-item list-group-item-action" data-bs-toggle="list"
                                            href="userCreateBetEvent.do" role="tab">Create
                                            a Betting Event</a> <a onclick="loadDisplay(this.id)" id="leaderboard"
                                            class="list-group-item list-group-item-action" data-bs-toggle="list"
                                            href="getLeaderboard.do" role="tab">View
                                            Leaderboard</a> <a onclick="loadDisplay(this.id)" id="myWagers"
                                            class="list-group-item list-group-item-action" data-bs-toggle="list"
                                            href="getWagers.do" role="tab">View
                                            My Wagers</a> <a onclick="loadDisplay(this.id)" id="updateUser"
                                            class="list-group-item list-group-item-action" data-bs-toggle="list"
                                            href="updateUser.do" role="tab">Edit
                                            Profile</a>
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
                                                                    ${user.fullName}</div>
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
                                                                <div class="col-sm-9 text-secondary">
                                                                    ${user.username }</div>
                                                            </div>
                                                            <hr>

                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">About Me</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    ${user.aboutMe}</div>
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
                                                                <td><span class="text-success"> <i
                                                                            class="fas fa-caret-down me-1"></i><span>${entry.user.username}
                                                                        </span>
                                                                    </span></td>
                                                                <td><span class="text-success"> <i
                                                                            class="fas fa-caret-up me-1"></i><span>${entry.count}</span>
                                                                    </span></td>
                                                                <td><span class="text-success"> <i
                                                                            class="fas fa-caret-up me-1"></i><span>${entry.total}</span>
                                                                    </span></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>

                                                </table>


                                            </div>



                                            <!-- <div class="wager-sort-container">
													<button type="button" class="btn btn-success"
														id="activeWager" onclick="loadWagerView(this.id)">Active
														Wagers</button>
													<button type="button" class="btn btn-secondary"
														id="expiredWager" onclick="loadWagerView(this.id)">Expired
														Wagers</button>
												</div> -->
                                            <!-- -----------------------SCRIPT FOR WAGER TABLE TABS--------------- -->
  
  



                                            <!-- ------------------Active Wagers----------------- -->



                                            <div class="tab-pane" id="myWagersview" role="tabpanel">
                                            
                                            <div class="tab-pane" id="tabss" role="tabpanel">
                                                <ul>
                                                    <li><a href="#tabs-1">Active Wagers</a></li>
                                                    <li><a href="#tabs-2">Expired Wagers</a></li>
                                                </ul>


                                                <div id="user-wagers-table" class="wager-table-container user-wagers">

                                                    <div id="tabss-1">

                                                        <div class="wager-container" id="activeWagerView">
                                                            <c:forEach items="${events}" var="e">
                                                                <c:if test="${e.active }">
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
                                                                            <c:forEach items="${userWagers}"
                                                                                var="wager">
                                                                                <tr>
                                                                                    <th scope="row">
                                                                                        ${wager.user.username}</th>
                                                                                    <td><span class="text-danger"> <i
                                                                                                class="fas fa-caret-down me-1"></i><span>${wager.betAmount}</span>
                                                                                        </span></td>
                                                                                    <td><span class="text-success"> <i
                                                                                                class="fas fa-caret-up me-1"></i><span>${wager.contender.name}</span>
                                                                                        </span></td>
                                                                                    <td>
                                                                                        <c:if
                                                                                            test="${wager.contender.event.completion}">
                                                                                            <span class="text-success">
                                                                                                <i
                                                                                                    class="fas fa-caret-up me-1"></i><span>${wager.betAmount
                                                                                                    *
                                                                                                    wager.multiplier}</span>
                                                                                            </span>
                                                                                        </c:if>
                                                                                    </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>


                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                    <!-- -------------------- NOT ACTIVE WAGERS ---------------- -->

                                                    <div id="tabss-2">
                                                        <div class="wager-container" id="activeWagerView">
                                                            <c:forEach items="${events}" var="e">
                                                                <c:if test="${not e.active }">
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
                                                                            <c:forEach items="${userWagers}"
                                                                                var="wager">
                                                                                <tr>
                                                                                    <th scope="row">
                                                                                        ${wager.user.username}</th>
                                                                                    <td><span class="text-danger"> <i
                                                                                                class="fas fa-caret-down me-1"></i><span>${wager.betAmount}</span>
                                                                                        </span></td>
                                                                                    <td><span class="text-success"> <i
                                                                                                class="fas fa-caret-up me-1"></i><span>${wager.contender.name}</span>
                                                                                        </span></td>
                                                                                    <td>
                                                                                        <c:if
                                                                                            test="${wager.contender.event.completion}">
                                                                                            <span class="text-success">
                                                                                                <i
                                                                                                    class="fas fa-caret-up me-1"></i><span>${wager.betAmount
                                                                                                    *
                                                                                                    wager.multiplier}</span>
                                                                                            </span>
                                                                                        </c:if>
                                                                                    </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>


                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            </div>
















                                            <div class="tab-pane" id="updateUserview" role="tabpanel">
                                                <jsp:include page="Components/updateuser.jsp" />
                                            </div>
                                        </div>

                                        <script>
                                            function loadDisplay(clicked_id) {
                                                console.log(clicked_id)
                                                var selectedview = clicked_id + "view";
                                                var views = ["loadAllBetsview",
                                                    "createEventview",
                                                    "leaderboardview",
                                                    "myWagersview",
                                                    "updateUserview"];
                                                for (let i = 0; i < views.length; i++) {
                                                    if (views[i] == selectedview) {
                                                        document
                                                            .getElementById(selectedview).classList
                                                            .add("active");

                                                    } else {
                                                        document
                                                            .getElementById(views[i]).classList
                                                            .remove("active");
                                                    }
                                                }

                                                var viewCard = document
                                                    .getElementById("View")
                                                console.log(viewCard)
                                            }

                                            function addContender() {
                                                $("#contender-names")
                                                    .append(
                                                        '<input type="text" name="contenderName">');
                                                $("#contender-odds")
                                                    .append(
                                                        ' <input type="number" name="contenderOdds" min="1", max="100" step="1">')
                                            }
                                            function addsubcategory() {
                                                $('#sub-cateory-container')
                                                    .append(
                                                        '<input type="text" name="cname">')
                                            }
                                            function toggleContender(clicked_id) {
                                                var contender = document
                                                    .getElementById(clicked_id).innerHTML;
                                                document
                                                    .getElementById("contenderName").value = contender;
                                                var contenderBtn = document
                                                    .getElementById(clicked_id);
                                                contenderBtn.id;
                                                var contId = document
                                                    .getElementById("contenderId");
                                                if (contenderBtn.classList
                                                    .contains("btn-secondary")) {
                                                    contenderBtn.classList
                                                        .remove("btn-secondary")
                                                    contenderBtn.classList
                                                        .add("btn-primary");
                                                } else {
                                                    contenderBtn.classList
                                                        .remove("btn-primary");
                                                    contenderBtn.classList
                                                        .add("btn-secondary");
                                                }
                                            }
                                        </script>
                                        <script
                                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                                            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                                            crossorigin="anonymous"></script>


                                    </div>
                                </div>
                                <div class="row gutters-sm">
                                    <div class="col-sm-6 mb-3">
                                        <div class="card h-100">
                                            <div class="card-body">
                                                <h6 class="d-flex align-items-center mb-3">
                                                    <i class="material-icons text-info mr-2">assignment</i>Project
                                                    Status
                                                </h6>
                                                <small>Web Design</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 80%" aria-valuenow="80" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Website Markup</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 72%" aria-valuenow="72" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>One Page</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 89%" aria-valuenow="89" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Mobile Template</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 55%" aria-valuenow="55" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Backend API</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 66%" aria-valuenow="66" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <div class="card h-100">
                                            <div class="card-body">
                                                <h6 class="d-flex align-items-center mb-3">
                                                    <i class="material-icons text-info mr-2">assignment</i>Project
                                                    Status
                                                </h6>
                                                <small>Web Design</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 80%" aria-valuenow="80" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Website Markup</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 72%" aria-valuenow="72" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>One Page</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 89%" aria-valuenow="89" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Mobile Template</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 55%" aria-valuenow="55" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                                <small>Backend API</small>
                                                <div class="progress mb-3" style="height: 5px">
                                                    <div class="progress-bar bg-primary" role="progressbar"
                                                        style="width: 66%" aria-valuenow="66" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
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

            






            <br>
            <br>
            <br>
        </body>

        </html>