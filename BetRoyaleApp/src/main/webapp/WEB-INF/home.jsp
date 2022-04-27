<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>

</head>
<style>



.container-fluid{
 
    background-color: white;
    
}
.info{
    color: black;
    
}
</style>
<body class="container-fluid">



<jsp:include page="Bootstrap.html" />

<jsp:include page="Components/navbar.jsp" />

	
	<div id="SummitCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#SummitCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#SummitCarousel" data-slide-to="1"></li>
			<li data-target="#SummitCarousel" data-slide-to="2"></li>
			<li data-target="#SummitCarousel" data-slide-to="3"></li>
			
		
		</ol>

		<div class="carousel-inner">

			<div class="carousel-item active">
        <a href="">
				<img class="d-block w-100"
          src="https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fi.imgur.com%2FZG6IKSnh.jpg"
						alt="First slide">
      </a>
				<div class="carousel-caption d-none d-md-block">
					<h5></h5>
					<p></p>

				</div>
			</div>

			<div class="carousel-item">
        <a href="">
				<img class="d-block w-100"
					src="https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fi.imgur.com%2FT18JOeTh.jpg"
        
					alt="Second slide">
          </a>
				<div class="carousel-caption d-none d-md-block">
					<h5>Mount Aconcagua</h5>
					<p>Argentina South America</p>

				</div>
			</div>

			<div class="carousel-item">

        <a href="">
				<img class="d-block w-100"
					src="https://images.squarespace-cdn.com/content/v1/54b15433e4b090b197f1b37a/1501207124742-6XYCWAY09APPLKNSW9K0/France-Alps-Mont-Blanc-white-mountains-lake-reflections-mirror_1920x1080.jpg?format=2500w"
					alt="Third slide">
        </a>
				<div class="carousel-caption d-none d-md-block">
					<h5>Mont Blanc</h5>
					<p>French Alps Europe</p>

				</div>
			</div>

			<div class="carousel-item">
        <a href="">
        <img class="d-block w-100"
					src="https://www.adventurealternative.com/media/201753/cartsenz-pyramid-irian-jaya.jpg"
					alt="Fourth slide">
        </a>
				<div class="carousel-caption d-none d-md-block">
					<h5>Puncak Jaya(Carstensz Pyramid)</h5>
					<p>New Guinea Indonesia</p>

				</div>
			</div>
			<a class="carousel-control-prev" href="#SummitCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#SummitCarousel"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div> 

  <div class="info">
<H3 class="h3">How It Works</H3>

<ul>
  <li>Browse The Markets</li>
  <li>Make A Prediction</li>
  <li>Place Your Wager</li>
  

</ul>
</div>



  
<iframe class="container-fluid" width="750" height="500" src="https://www.youtube.com/embed/l9qYeDdJzGo" 
title="YouTube video player" 
frameborder="0" 
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>






<br>
<br>
<br>
<br>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<jsp:include page="Components/createuser.jsp" />

<br>
------------------------------------------------- user login --------------

<br>
	<br>
<jsp:include page="Components/userlogin.jsp" />
	

<br>
	<br>

<br>
<br>
<br>
<br>


</body>
</html>