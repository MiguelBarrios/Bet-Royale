<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event View</title>
<jsp:include page="bootstraphead.jsp" />
<link rel="stylesheet" href="css/styleevents.css">
</head>

<body>

	<div class="event-sort-container">
		<button type="button" class="btn btn-success" id="activeEvents"
			onclick="loadEventView(this.id)">Active Events</button>
		<button type="button" class="btn btn-secondary" id="expiredEvents"
			onclick="loadEventView(this.id)">Expired Events</button>
		<button type="button" class="btn btn-secondary" id="myEvents"
			onclick="loadEventView(this.id)">My Events</button>
	</div>

	
	
	
	<div class="item-container-test " id="activeEventsView">

		<c:forEach items="${events}" var="e">
			<c:if test="${e.active}">
				<div class="item">
					<div class="event-card"
						onclick="location.href='loadEventPage.do?userId=${userId}&eventId=${e.id}';">
						<div class="event-image-container">
							<img class="col bet-event-img"
								src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
								width="75px" height="75px"> </img>
						</div>
						<div class="event-info-container">
							<div class="category-container">
								<c:if test="${not empty e.subcategories}">
									<div class="tag category">${e.subcategories[0].category.name}</div>
								</c:if>
								<c:forEach items="${e.subcategories}" var="sub">
									<div class="tag sub-category">${sub.name}</div>
								</c:forEach>

							</div>
							<div>
								<h3>${e.name}</h3>
							</div>
						</div>
						
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>




	<%-- <div class="item-container-test event-list-container"
		id="activeEventsView">
		<h1>Active Events</h1>
		<c:forEach items="${events}" var="e">

			<c:if test="${e.active}">
				<div class="item">
					<!--------------------------------- Card ------------------------------->
					<div class="event-card"
						onclick="location.href='loadEventPage.do?userId=${userId}&eventId=${e.id}';">
						<div class="event-image-container">
							<img class="col bet-event-img"
								src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
								width="75px" height="75px"></img>


						</div>

						<div class="event-info-container">
							<div class="category-container">
								<c:if test="${not empty e.subcategories}">
									<div class="tag category">${e.subcategories[0].category.name}</div>
								</c:if>
								<c:forEach items="${e.subcategories}" var="sub">
									<div class="tag sub-category">${sub.name}</div>
								</c:forEach>

							</div>
							<div>
								<h3>${e.name}</h3>
							</div>
						</div>
					</div>
				</div>
				<!--------------------------------- Card ------------------------------->
			</c:if>
		</c:forEach>
	</div>
 --%>




	<!--------------- Expired Events ------------>

		
	<div class=" item-container-test hidden "
		id="expiredEventsView">
		
		<c:forEach items="${events}" var="e">
			<c:if test="${not e.active}">
				<div class="item">
					<!--------------------------------- Card ------------------------------->
					<div class="event-card"
						onclick="location.href='loadEventPage.do?userId=${userId}&eventId=${e.id}';">
						<div class="event-image-container">
							<img class="col bet-event-img"
								src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
								width="75px" height="75px"></img>
						</div>
						<div class="event-info-container">
							<div class="category-container">
								<c:if test="${not empty e.subcategories}">
									<div class="tag category">${e.subcategories[0].category.name}</div>
								</c:if>
								<c:forEach items="${e.subcategories}" var="sub">
									<div class="tag sub-category">${sub.name}</div>
								</c:forEach>

							</div>
							<div>
								<h3>${e.name}</h3>
							</div>
						</div>
					</div>
				</div>
				<!--------------------------------- Card ------------------------------->

			</c:if>

		</c:forEach>
	</div>





	<!--------------- MY Events ------------>

	<div class="item-container-test hidden "
		id="myEventsView">
		
		<c:forEach items="${events}" var="e">
			<c:if test="${e.user.id == userId}">
				<div class="item">
					<!--------------------------------- Card ------------------------------->
					<div class="event-card"
						onclick="location.href='loadEventPage.do?userId=${userId}&eventId=${e.id}';">
						<div class="event-image-container">
							<img class="col bet-event-img"
								src="https://avatars.githubusercontent.com/u/34669927?s=40&v=4"
								width="75px" height="75px"></img>
						</div>
						<div class="event-info-container">
							<div class="category-container">
								<c:if test="${not empty e.subcategories}">
									<div class="tag category">${e.subcategories[0].category.name}</div>
								</c:if>
								<c:forEach items="${e.subcategories}" var="sub">
									<div class="tag sub-category">${sub.name}</div>
								</c:forEach>

							</div>
							<div>
								<h3>${e.name}</h3>
							</div>
						</div>
					</div>
				</div>
				<!--------------------------------- Card ------------------------------->
			</c:if>

		</c:forEach>
	</div>




	<jsp:include page="bootstrapfoot.jsp" />
	<script>
		function loadEventView(clicked_id) {
			var viewID = clicked_id + "View";
			loadView(viewID)
		}

		function loadView(viewID) {
			const views = [ "activeEventsView", "expiredEventsView",
					"myEventsView" ];
			const viewBtn = [ "activeEvents", "expiredEvents", "myEvents" ];
			for (let i = 0; i < views.length; ++i) {
				if (views[i] == viewID) {
					document.getElementById(views[i]).classList
							.remove("hidden");
					document.getElementById(viewBtn[i]).classList
							.remove("btn-secondary");
					document.getElementById(viewBtn[i]).classList
							.add("btn-success");
				} else {
					document.getElementById(views[i]).classList.add("hidden");
					document.getElementById(viewBtn[i]).classList
							.remove("btn-success");
					document.getElementById(viewBtn[i]).classList
							.add("btn-secondary");
				}

			}
		}
	</script>

</body>
</html>