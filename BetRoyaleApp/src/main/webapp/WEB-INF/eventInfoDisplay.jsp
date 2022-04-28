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
      <div class="container" id="content-container">
         <!-- --- gives the user the ability to edit event if event belongs to user -->
         <c:if test="${event.user.id == user.id}">
            <c:if test="${not event.completion}">
               <h1>Event is not complete</h1>
               <button type="button" class="btn btn-warning" id="edit" onclick="toggleEventForm()">EDIT</button>
               <div class="hidden" id="editEventForm">
                  <jsp:include page="Components/editbettingevent.jsp" />
               </div>
            </c:if>
         </c:if>
         
         <!----- Event information -->
         <div class="event-info-container">
            <img class="col bet-event-img" src="https://avatars.githubusercontent.com/u/34669927?s=40&amp;v=4" width="75px" height="75px">
            <h3>(${event.id})${event.name}</h3>
            <p>${event.description}</p>
            <div>end date: ${event.endDate}</div>
            <div>date created: ${event.dateCreated}</div>
            <div>Active: ${event.active}</div>
            <div>isCompleted: ${event.completion}</div>
            <div class="event-contenders">
               <c:forEach items="${event.contenders}" var="contender">
                  <div>${contender.name}</div>
               </c:forEach>
            </div>
         </div>
         
         <!-- Allow user to place wager if event is still active -->
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
         
        <div class="table-switch">
        	<button type="button" class="btn btn-primary" id="all" onclick="toggleWagerTable('all-wagers-table')">All Wagers</button>
        	<button type="button" class="btn btn-secondary" id="user" onclick="toggleWagerTable('user-wagers-table')">User Wagers</button>     
        </div>
        

         <!--------  Show all wagers on event table -->
         
         <div id="all-wagers-table" class="wager-table-container">
         <h3>All Wagers</h3>
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
                  <c:forEach items="${wagers}" var="wager">
                     <tr>
                        <th scope="row">${wager.user.username}</th>
                        <td>
                           <span class="text-success">
                           <i class="fas fa-caret-down me-1"></i><span>${wager.betAmount}</span>
                           </span>
                        </td>
                        <td>
                           <span class="text-danger">
                           <i class="fas fa-caret-up me-1"></i><span>${wager.contender.name}</span>
                           </span>
                        </td>
                        <td>
                           <c:if test="${event.completion}">
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
         
         
         <div id="user-wagers-table" class="wager-table-container user-wagers hidden">
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
                           <c:if test="${event.completion}">
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
         
         <!------ Chat window -->
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
                  <input type="text" name="commentText" class="form-control" id="formGroupExampleInput" placeholder="comment" required>
                  <input type="submit" name="add Comment" />
               </div>
            </form>
         </div>
         
      </div>
      <jsp:include page="Components/footer.jsp"/>
      <!-- End main Container -->
      
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
         
         function toggleWagerTable(selectedTable){
        	 console.log(selectedTable)
        	 if(selectedTable == "all-wagers-table"){
        		 document.getElementById("all-wagers-table").classList.remove("hidden")
        		 document.getElementById("user-wagers-table").classList.add("hidden")
        		 document.getElementById("all").classList.remove("btn-secondary")
        		 document.getElementById("all").classList.add("btn-primary")
        		 document.getElementById("user").classList.remove("btn-primary")
        		 document.getElementById("user").classList.add("btn-secondary")
        		 
        	 }else{//user-wagers-table
        		 document.getElementById("all-wagers-table").classList.add("hidden")
        		 document.getElementById("user-wagers-table").classList.remove("hidden")
        		 document.getElementById("user").classList.remove("btn-secondary")
        		 document.getElementById("user").classList.add("btn-primary")
        		 document.getElementById("all").classList.remove("btn-primary")
        		 document.getElementById("all").classList.add("btn-secondary")
        	 }
         }
      </script>
   </body>	
</body>


    