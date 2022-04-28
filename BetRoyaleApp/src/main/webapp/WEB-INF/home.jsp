<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>

</head>

<body class="container-fluid">

<jsp:include page="Bootstrap.html" />

<jsp:include page="Components/navbar.jsp" />



	<div id="BettingCar" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#SummitCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#SummitCarousel" data-slide-to="1"></li>
			<li data-target="#SummitCarousel" data-slide-to="2"></li>
			<li data-target="#SummitCarousel" data-slide-to="3"></li>
			
		</ol>

		<div class="carousel-inner">

			<div class="carousel-item active">
				<img class="d-block w-100"
					src="#"
					alt="First slide">

				<div class="carousel-caption d-none d-md-block">
					

				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" 
				src="#"
					alt="Second slide">

				<div class="carousel-caption d-none d-md-block">
				

				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="#"
					alt="Third slide">

				<div class="carousel-caption d-none d-md-block">
				

				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="#"
					alt="Fourth slide">

				<div class="carousel-caption d-none d-md-block">
					

				</div>
			</div>
			

			<a class="carousel-control-prev" href="#BettingCar" role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#SummitCarousel" role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<section class="bg-dark text-light p-5 text-center">
		<div class="container">
			<div class="d-sm-flex align-items-center justify-content-between">
				<div>
					<h1><span class="text-warning"> Search </span>The Marketplace</h1>
					<p class="lead my-4">
						Lorem, ipsum dolor sit amet consectetur adipisicing elit.
						Asperiores fuga amet enim expedita obcaecati et sapiente atque voluptates sit saepe quos cum,
						est distinctio nesciunt soluta! Cupiditate, similique? Beatae, nobis.
					</p>
					<button class="btn btn-primary btn-lg">Start</button>
				</div>
				<img class="img-fluid w-50" src="img/team1.png" alt="">
			</div>
		</div>
	</section>

	<section class="bg-dark text-light p-5 text-center">
		<div class="container">
			<div class="d-sm-flex align-items-center justify-content-between">
				<img class="img-fluid w-50" src="img/team2.png" alt="">
				<div>

					<h1><span class="text-warning"> Predict </span>the outcome</h1>
					<p class="lead my-4">
						Lorem, ipsum dolor sit amet consectetur adipisicing elit.
						Asperiores fuga amet enim expedita obcaecati et sapiente atque voluptates sit saepe quos cum,
						est distinctio nesciunt soluta! Cupiditate, similique? Beatae, nobis.
					</p>
					<button class="btn btn-primary btn-lg">Start</button>
				</div>

			</div>
		</div>
	</section>


	<section class="bg-dark text-light p-5 text-center">
		<div class="container">
			<div class="d-sm-flex align-items-center justify-content-between">
				<div>
					<h1><span class="text-warning"> Place </span>Your Wager</h1>
					<p class="lead my-4">
						Lorem, ipsum dolor sit amet consectetur adipisicing elit.
						Asperiores fuga amet enim expedita obcaecati et sapiente atque voluptates sit saepe quos cum,
						est distinctio nesciunt soluta! Cupiditate, similique? Beatae, nobis.
					</p>
					<button class="btn btn-primary btn-lg">Start</button>
				</div>
				<img class="img-fluid w-50" src="img/team3.png" alt="">
			</div>
		</div>
	</section>

	<!-- New Letter Section -->

	<section class="bg-primary text-light p-5">
		<div class="container">
			<div class="d-md-flex justify-content-between align-items-center">
				<h3 class="mb-3 mb-md-o">Sign Up For Our Newsletter</h3>

				<div class="input-group col-7">
					<input type="text" class="form-control" placeholder="Enter Your Email">
					<button class="btn btn-dark btn-md" type="button" id="button-addon2">Button</button>
				</div>
			</div>
		</div>
	</section>



	<!-- Boxes -->

	<section class="p-5">
		<div class="container">
			<div class="row text-center g-4">

				<div class="col-md">
					<div class="card bg-dark text-light">
						<div class="card-body text-center">
							<div class="h1 mb-3 mt-3">
								<i class="bi bi-laptop"></i>
							</div>
							<h3 class="card-title mb-3">
								virtual
							</h3>
							<p class="card-text">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem ea autem ullam
								perferendis?
								Vitae, quae!
							</p>
							<a href="#" class="btn btn-primary mb-0">Read More</a>
							<div class="h3"></div>
						</div>
					</div>
				</div>
				<div class="col-md">
					<div class="card bg-secondary text-light">
						<div class="card-body text-center">
							<div class="h1 mb-3 mt-3">
								<i class="bi bi-person-square"></i>
							</div>
							<h3 class="card-title mb-3">
								virtual
							</h3>
							<p class="card-text">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem ea autem ullam
								perferendis?
								Vitae, quae!
							</p>
							<a href="#" class="btn btn-dark mb-0">Read More</a>
							<div class="h3"></div>
						</div>
					</div>
				</div>
				<div class="col-md">
					<div class="card bg-dark text-light">
						<div class="card-body text-center">
							<div class="h1 mb-3 mt-3">
								<i class="bi bi-people"></i>
							</div>
							<h3 class="card-title mb-3">
								test
							</h3>
							<p class="card-text">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem ea autem ullam
								perferendis?
								Vitae, quae!
							</p>
							<a href="#" class="btn btn-primary mb">Read More</a>
							<div class="h3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Video section -->


		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-md p-5">
					<iframe class="img-fluid" width="250" height="200" src="https://www.youtube.com/embed/l9qYeDdJzGo"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen>
					</iframe>

				</div>
				<div class="col-md p5">
					<h2>Watch this video for a tutorial</h2>
					<p class="lead">
						Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa, accusantium nihil
						ullam officiis natus cum!
					</p>
					<p>Questions about where to begin? message us!</p>
					<a href="#" class="btn btn-light mt-3">
						<i class="bi bi-chevron-right"></i>Read More</a>
				</div>

			</div>
		</div>



		<div>
			<section class="bg-dark text-light p-5 ">
				<div class="container-fluid">
					<div class="d-md-flex justify-content-between align-items-center">

						<div class="input-group col-8">
							<input type="text" class="form-control" placeholder="Send Us A Message">
							<button class="btn btn-primary btn-md" type="button" id="button-addon2">Send</button>
						</div>
						<h3 class="mb-3 mb-md-o">Questions about the tutorial?</h3>
					</div>
				</div>
			</section>

		</div>


		<!-- Question accordion -->

		<section id="#" class="p-5">
			<div class="container">
				<h2 class="text-center mb-4">Frequently Asked Questions</h2>

				<div class="accordion accordion-flush" id="questions">

					<!-- item 1 -->
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed" 
							type="button" 
							data-bs-toggle="collapse"
							data-bs-target="#question-one" >
							How do I place a bet?
							</button>
						</h2>
						<div id="question-one" class="accordion-collapse collapse"
							aria-labelledby="flush-headingOne" data-bs-parent="#questions">
							<div class="accordion-body">You can place a bet by logging in, finding an event you  would like to make a wager on and submitting that wager on the form create wager near the event.</div>
						</div>
					</div>
					<!-- item 2 -->
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingTwo">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
								data-bs-target="#flush-collapseTwo" >
								Accordion Item #2
							</button>
						</h2>
						<div id="flush-collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">Placeholder content for this accordion, which is intended to
								demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion
								body. Let's imagine this being filled with some actual content.</div>
						</div>
						<!-- item 3 -->
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="flush-headingThree">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
								data-bs-target="#flush-collapseThree"aria-expanded="false"
								aria-controls="flush-collapseThree">
								Accordion Item #3
							</button>
						</h2>
						<div id="flush-collapseThree" class="accordion-collapse collapse"
							aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
							<div class="accordion-body">Placeholder content for this accordion, which is intended to
								demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion
								body. Nothing more exciting happening here in terms of content, but just filling up the
								space to make it look, at least at first glance, a bit more representative of how this
								would look in a real-world application.</div>
						</div>
					</div>
				</div>
			</div>

		</section>

	

<br>
<br>
<br>
<br>


</body>
</html>