<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Bet Royale App</title>
<jsp:include page="bootstraphead.jsp" />
	
</head>
<style>

.home-old {
	padding: 200px
}

.body {
	background: secondary;
}

</style>
<body>
	<jsp:include page="Components/navbar.jsp" />

	<div class="home-old">
		<div class="row row-x">


			<div id="SummitCarousel" class="carousel slide"
				data-ride="carousel mb-5">
				<ol class="carousel-indicators">
					<li data-target="#SummitCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#SummitCarousel" data-slide-to="1"></li>
					<li data-target="#SummitCarousel" data-slide-to="2"></li>
					<li data-target="#SummitCarousel" data-slide-to="3"></li>

				</ol>

				<div class="carousel-inner">

					<div class="carousel-item active">
						<div class="d-flex justify-content-center w-200 h-100">
							<img class="d-block w-100"
								src="https://metro.co.uk/wp-content/uploads/2021/03/33991068278_50049c5752_k-0717.jpg?quality=90&strip=all&zoom=1&resize=480%2C319"
								alt="First slide">
						</div>
						<div class="carousel-caption d-none d-md-block">
						<h4>LoL Msi Tournament</h4>
					<p>China vs Korea vs Europe vs North America</p>
					</div>
					</div>
					<div class="carousel-item">
						<div class="d-flex justify-content-center w-200 h-100">
							<img class="d-block w-100"
								src="https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fi.imgur.com%2FT18JOeTh.jpg"
								alt="Second slide">
						</div>
						<div class="carousel-caption d-none d-md-block">
						<h4>Instructor Bout 32</h4>
					<p>Rob vs Dee</p>
					</div>
					</div>
					<div class="carousel-item">
						<div class="d-flex justify-content-center w-200 h-100">
							<img class="d-block w-100"
								src="https://visitowa.com/wp-content/uploads/2022/03/Mario-Kart-Saturdays-Website-Metadata-01-1024x533.jpg"
								alt="Third slide">
						</div>
						<div class="carousel-caption d-none d-md-block">
						<h4>Mario Kart Tournament</h4>
					<p>Andrew vs Henry vs Lucas vs Miguel</p>
					</div>
					</div>
					<div class="carousel-item">
						<div class="d-flex justify-content-center w-200 h-200">
							<img class="d-block w-100"
								src="https://cdn.stayhappening.com/events9/banners/ce3719077a3fa0cc8ffef857727c14ad64e36f366845cfe32575a3252eb98266-rimg-w960-h503-gmir.jpg?v=1651018260"
								alt="Fourth slide">
						</div>
						<div class="carousel-caption d-none d-md-block">
						<h4>UFC Bout 274</h4>
					<p>Oliveira vs Gaethje</p>
					</div>
					</div>
					<div class="d-flex justify-content-center w-100 h-100">
						<a class="carousel-control-prev" href="#SummitCarousel"
							role="button" data-slide="prev"> </a> <a
							class="carousel-control-next" href="#SummitCarousel"
							role="button" data-slide="next"> </a>
					</div>
				</div>
			</div>


			<section class="bg-dark text-light p-5 text-center">
				<div class="container">
					<div class="d-sm-flex align-items-center justify-content-between">
						<div>
							<h1>
								<span class="text-warning"> Search </span>The Marketplace
							</h1>
							<p class="lead my-4"></p>

						</div>
						<img class="img-fluid w-10"
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDQiIGhlaWdodD0iNTIiIHZpZXdCb3g9IjAgMCAxMDQgNTIiPg0KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+DQogICAgICAgIDxwYXRoIGZpbGw9IiMyNjNCM0YiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTk1LjAxIDQwLjEzMmEyLjMzIDIuMzMgMCAwIDAtMS45MTQtLjY2NGwtMS4xMDYtMS4xYzMuNjk1LTQuMTc2IDUuNzM0LTkuNDYxIDUuNzM0LTE1LjA3MyAwLTYuMTAxLTIuMzg2LTExLjg0LTYuNzIxLTE2LjE1NkM4Ni42NiAyLjgxNCA4MC44OTQuNDQyIDc0Ljc1My40NDJjLTYuMTMgMC0xMS44OTYgMi4zNzUtMTYuMjM2IDYuNjk3LTQuMzQ1IDQuMzE2LTYuNzM0IDEwLjA1NS02LjczNCAxNi4xNTYgMCA2LjEwMiAyLjM5NCAxMS44NDMgNi43MzQgMTYuMTU5IDQuMzQgNC4zMiAxMC4xMDYgNi42OTIgMTYuMjM3IDYuNjkyYTIyLjgxOSAyMi44MTkgMCAwIDAgMTUuMTUtNS43MDdsMS4xMTEgMS4wOTdhMi4zMSAyLjMxIDAgMCAwIC42NjggMS45MWw3LjkxMyA3Ljg3M2MuNDYxLjQ1OCAxLjA2Mi42OCAxLjY2OC42OC41OTggMCAxLjIwNC0uMjI1IDEuNjY3LS42OGEyLjMzNyAyLjMzNyAwIDAgMCAwLTMuMzFsLTcuOTItNy44Nzd6bS03LjM0LTMuOTk5YTE4LjE5NSAxOC4xOTUgMCAwIDEtMTIuOTE2IDUuMzMgMTguMTggMTguMTggMCAwIDEtMTIuOTA3LTUuMzI1Yy0zLjQ0Ni0zLjQyOC01LjM1LTcuOTkzLTUuMzUtMTIuODQ1IDAtNC44NSAxLjktOS40MTIgNS4zNS0xMi44NDNhMTguMTg5IDE4LjE4OSAwIDAgMSAxMi45MDctNS4zMjVjNC44OCAwIDkuNDY4IDEuODkgMTIuOTE2IDUuMzI1IDMuNDQ0IDMuNDMgNS4zNDUgNy45OTMgNS4zNDUgMTIuODQzIDAgNC44NTItMS45MDEgOS40MS01LjM0NSAxMi44NHoiLz4NCiAgICAgICAgPGcgc3Ryb2tlPSIjMjYzQjNGIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iNCI+DQogICAgICAgICAgICA8cGF0aCBkPSJNMTEgNDhhMSAxIDAgMCAxLTEgMUgzYTEgMSAwIDAgMS0xLTFWMjNhMSAxIDAgMCAxIDEtMWg3YTEgMSAwIDAgMSAxIDF2MjV6TTQ1IDQ4YTEgMSAwIDAgMS0xIDFoLTdhMSAxIDAgMCAxLTEtMVYzM2ExIDEgMCAwIDEgMS0xaDdhMSAxIDAgMCAxIDEgMXYxNXpNMjggNDhhMSAxIDAgMCAxLTEgMWgtN2ExIDEgMCAwIDEtMS0xVjhhMSAxIDAgMCAxIDEtMWg3YTEgMSAwIDAgMSAxIDF2NDB6Ii8+DQogICAgICAgIDwvZz4NCiAgICA8L2c+DQo8L3N2Zz4NCg=="
							alt="">
					</div>
				</div>
			</section>

			<section class="bg-dark text-light p-5 text-center">
				<div class="container">
					<div class="d-sm-flex align-items-center justify-content-between">
						<img class="img-fluid w-10"
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4MCIgaGVpZ2h0PSI3OCIgdmlld0JveD0iMCAwIDgwIDc4Ij4NCiAgICA8ZyBmaWxsPSIjMjYzQjNGIiBmaWxsLXJ1bGU9Im5vbnplcm8iPg0KICAgICAgICA8cGF0aCBkPSJNNDAuODQyIDBBMS44MzkgMS44MzkgMCAwIDAgMzkgMS44NXYzNi42NDVjMCAxLjAyOC44MTkgMS44NSAxLjg0MiAxLjg1aDM2LjQ5NmExLjgzOSAxLjgzOSAwIDAgMCAxLjg0My0xLjg1YzAtOS40LTMuNDA2LTE4LjQ0NC05LjYwMy0yNS40ODlDNjIuMyA0Ljc0NiA1MS44MjMgMCA0MC44NDIgMHptMS44NDMgMzYuNjQ1VjMuNzU2YTM0LjcyIDM0LjcyIDAgMCAxIDI0LjEzOCAxMS43MTdjNS4xOTMgNS44ODYgOC4yMDggMTMuMzYgOC42MzYgMjEuMTcySDQyLjY4NXoiLz4NCiAgICAgICAgPHBhdGggZD0iTTY0LjAwNiA0NS43ODZjMC0uNzk2LS42MzQtMS40MzMtMS40MjctMS40MzNIMzMuNDUzdi0yOS4yNmMwLS43OTYtLjYzNS0xLjQzMy0xLjQyOC0xLjQzM0MxNC4zNzYgMTMuNjYuMDI5IDI4LjA2Ni4wMjkgNDUuNzg2YzAgMTcuNzA3IDE0LjM0NyAzMi4xMjcgMzEuOTk2IDMyLjEyN3MzMS45ODEtMTQuNDIgMzEuOTgxLTMyLjEyN3ptLTMxLjk4MSAyOS4yNmMtMTYuMDYzIDAtMjkuMTQtMTMuMTMxLTI5LjE0LTI5LjI2IDAtMTUuNjUgMTIuMjk5LTI4LjQ3NyAyNy43MTMtMjkuMjN2MjkuMjE2YzAgLjc5Ni42MzQgMS40MzMgMS40MjcgMS40MzNoMjkuMDk4Yy0uNzUgMTUuNDc3LTEzLjUxMSAyNy44NDEtMjkuMDk4IDI3Ljg0MXoiLz4NCiAgICA8L2c+DQo8L3N2Zz4NCg=="
							alt="">
						<div>

							<h1>
								<span class="text-warning"> Predict </span>the outcome
							</h1>
							<p class="lead my-4"></p>

						</div>

					</div>
				</div>
			</section>


			<section class="bg-dark text-light p-5 text-center">
				<div class="container">
					<div class="d-sm-flex align-items-center justify-content-between">
						<div>
							<h1>
								<span class="text-warning"> Place </span>Your Wager
							</h1>
							<p class="lead my-4"></p>

						</div>
						<img class="img-fluid w-10"
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI3MCIgaGVpZ2h0PSI4MyIgdmlld0JveD0iMCAwIDcwIDgzIj4NCiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPg0KICAgICAgICA8cGF0aCBmaWxsPSIjMjYzQjNGIiBmaWxsLXJ1bGU9Im5vbnplcm8iIGQ9Ik01OC4wODYgMTkuNDkyYzAtMS42OTctMS43MzUtMi4xOTItMy4wODYtMi40OTJ2NC45MzVjMS41MDYtLjEwMiAzLjA4Ni0uODAzIDMuMDg2LTIuNDQzek01My44MTMgOUM1Mi4xMDYgOS4wNDkgNTEgMTAuMDQ4IDUxIDExLjExOWMwIDEuMjQ3LjkzNSAxLjk2OCAyLjgxNSAyLjM0MUw1My44MTMgOXoiLz4NCiAgICAgICAgPHBhdGggZmlsbD0iIzI2M0IzRiIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNNTQuMTc3IDMwLjE0MmM4LjM2OCAwIDE1LjE3My02Ljc2MSAxNS4xNzMtMTUuMDdDNjkuMzUgNi43NjQgNjIuNTQzIDAgNTQuMTc3IDAgNDUuODA3IDAgMzkgNi43NjIgMzkgMTUuMDcyYzAgOC4zMDkgNi44MDcgMTUuMDcgMTUuMTc3IDE1LjA3em0tNi42NzItMTguOTY3YzAtMy4zODUgMi44MzUtNS4xMzUgNS45Ny01LjIzMlY0LjYxN2MwLS40MjguMzI1LS44NS43NS0uODUuNDI4IDAgLjc1NC40MjIuNzU0Ljg1djEuMzI2YzEuOTU0LjA1IDUuOTcyIDEuMjY5IDUuOTcyIDMuNzE2IDAgLjk3MS0uNzMgMS41NDMtMS41ODIgMS41NDMtMS42MzQgMC0xLjYwOC0yLjY2Ni00LjM4OC0yLjcxN3Y0LjczNmMzLjMxNS42OTggNi4yNDYgMS42NyA2LjI0NiA1LjUwOSAwIDMuMzM3LTIuNTA5IDUuMDM0LTYuMjQ2IDUuMjZ2MS41NGMwIC40MjYtLjMyNi44NS0uNzU1Ljg1LS40MjQgMC0uNzQ5LS40MjQtLjc0OS0uODV2LTEuNTRjLTQuMjQtLjEwNC02LjM0Ni0yLjYyLTYuMzQ2LTQuNTkxIDAtLjk5NC42MDUtMS41NyAxLjU1NC0xLjU3IDIuODEgMCAuNjI2IDMuNDQgNC43OTQgMy42MTZ2LTUuMjExYy0zLjcyLS42NzMtNS45NzQtMi4yOTEtNS45NzQtNS4wNTl6TTM0Ljc3MyAyNy41ODRsLTYuNzg0LS42OGMtLjUxOS0uMDUyLTEuMDIxLjE5OC0xLjI5LjY0MmExLjMyOSAxLjMyOSAwIDAgMCAuMDQgMS40MzRsMS43NiAyLjU5NEwuNjQ4IDQ5Ljc1MUExLjMzIDEuMzMgMCAwIDAgLjI2IDUxLjZhMS4zNDYgMS4zNDYgMCAwIDAgMS44Ni4zODJMMzAgMzMuNzg2bDEuNjE2IDIuMzc5Yy4yNzguNDEuNzYuNjMzIDEuMjU0LjU4YTEuMzQyIDEuMzQyIDAgMCAwIDEuMTUtLjk1N2wxLjkxLTYuNTA3YTEuMzIgMS4zMiAwIDAgMC0uMTc2LTEuMTE5IDEuMzY1IDEuMzY1IDAgMCAwLS45OC0uNTc4eiIvPg0KICAgICAgICA8ZyBzdHJva2U9IiMyNjNCM0YiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSI0Ij4NCiAgICAgICAgICAgIDxwYXRoIGQ9Ik0zOCA4MGExIDEgMCAwIDEtMSAxaC03YTEgMSAwIDAgMS0xLTFWNTVhMSAxIDAgMCAxIDEtMWg3YTEgMSAwIDAgMSAxIDF2MjV6TTE1IDgwYTEgMSAwIDAgMS0xIDFIN2ExIDEgMCAwIDEtMS0xVjY1YTEgMSAwIDAgMSAxLTFoN2ExIDEgMCAwIDEgMSAxdjE1ek01OSA4MGExIDEgMCAwIDEtMSAxaC03YTEgMSAwIDAgMS0xLTFWNDBhMSAxIDAgMCAxIDEtMWg3YTEgMSAwIDAgMSAxIDF2NDB6Ii8+DQogICAgICAgIDwvZz4NCiAgICA8L2c+DQo8L3N2Zz4NCg=="
							alt="">
					</div>
				</div>
			</section>

			<!-- New Letter Section -->

			<section class="bg-secondary text-light p-5">
				<div class="container">
					<div class="d-md-flex justify-content-between align-items-center">
						<h3 class="mb-3 mb-md-o">Sign Up For Our Newsletter</h3>

						<div class="input-group col-7">
							<input type="text" class="form-control"
								placeholder="Enter Your Email">
							<button class="btn btn-dark btn-md" type="button"
								id="button-addon2">Button</button>
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
									<h3 class="card-title mb-3">virtual</h3>
									<p class="card-text"></p>
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
									<h3 class="card-title mb-3">virtual</h3>
									<p class="card-text"></p>
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
									<h3 class="card-title mb-3">test</h3>
									<p class="card-text"></p>
									<a href="#" class="btn btn-primary mb">Read More</a>
									<div class="h3"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Video section -->


			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-4 p-5">
						<iframe class="img-fluid" width="350" height="300"
							src="https://www.youtube.com/embed/l9qYeDdJzGo"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen> </iframe>
					</div>
				</div>
			</div>
		



		
			<section class="bg-dark text-light p-5 ">
				<div class="container-fluid">
					<div class="d-md-flex justify-content-between align-items-center">

						<div class="input-group col-8">
							<input type="text" class="form-control"
								placeholder="Send Us A Message">
							<button class="btn btn-primary btn-md" type="button"
								id="button-addon2">Send</button>
						</div>
						<h3 class="mb-3 mb-md-o">Questions about the tutorial?</h3>
					</div>
				</div>
			</section>








			<!-- Question accordion -->

			<section id="#" class="p-5">
				<div class="container">
					<h2 class="text-center mb-4">Frequently Asked Questions</h2>

					<div class="accordion accordion-flush" id="questions">

						<!-- item 1 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#question-one">
									How do I place a bet?</button>
							</h2>
							<div id="question-one" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne" data-bs-parent="#questions">
								<div class="accordion-body">You can place a bet by logging
									in, finding an event you would like to make a wager on and
									submitting that wager on the form create wager near the event.</div>
							</div>
						</div>
						<!-- item 2 -->
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo">
									Accordion Item #2</button>
							</h2>
							<div id="flush-collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="flush-headingTwo"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									Placeholder content for this accordion, which is intended to
									demonstrate the
									<code>.accordion-flush</code>
									class. This is the second item's accordion body. Let's imagine
									this being filled with some actual content.
								</div>
							</div>
							<!-- item 3 -->
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="false" aria-controls="flush-collapseThree">
									Accordion Item #3</button>
							</h2>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									Placeholder content for this accordion, which is intended to
									demonstrate the
									<code>.accordion-flush</code>
									class. This is the third item's accordion body. Nothing more
									exciting happening here in terms of content, but just filling
									up the space to make it look, at least at first glance, a bit
									more representative of how this would look in a real-world
									application.
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>
		</div>
	</div>
<jsp:include page="Components/footer.jsp" />
<jsp:include page="bootstrapfoot.jsp" />

</body>
</html>