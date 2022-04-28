<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <!-- <link rel="stylesheet" href="navstyles.css"> -->
</head>
	<style>
	.header-tp .navbar {
    position: relative;
	min-height: 50px;
	margin-bottom: 0px;
	border: 1px solid transparent;
}

.header-tp .navbar-default {
	background-color: #1DB9EC;
	border-color:transparent!important;
}
.header-tp .bdr li:nth-child(odd) 
{
	border-left: 1px solid rgba(255, 255, 255, 0.44);

}

.header-tp .bdr li:nth-child(even) 
{
	border-right: 1px solid rgba(255, 255, 255, 0.44);
	border-left: 1px solid rgba(255, 255, 255, 0.44);
}
.header-tp .bdr li
{
	padding:10px 0px;
}
.header-tp .bdr li a
{
	color:#fff!important;
}

.header-tp .pddr
{
	padding-top:5px;
}

.header-tp .navbar-right {
    float: right !important;
    margin-right: 30px;
}

.header-tp  .nav > li {
    position: relative;
    display: inline-block;
}

.btn-blu {
	display: inline-block;
	padding: 10px 35px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 0px;
	background-color: #0D4459;
	border-color: #0D4459;
	color: #fff;
}      
.mrgn-top
{
	margin-top:15px;
	margin-right:15px;
}    

.header-tp
{
    margin: 10px 0px;
}    

/*######################## LOGIN/SIGNUP PAGE START ##################################*/
.at-login-form .btn-fb
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 0px;
	background-color: #4568B2;
	width: 100%;
	margin-top: 10px;
	color:#fff;
}

.at-login-form .btn-gp
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid #eee;
	border-radius: 0px;
	background-color: #FFFFFF;
	width: 100%;
	margin-top: 10px;
	color:#000;
}

.at-login-form .btn-lgin
{
	display: inline-block;
	padding: 18px 20px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid #eee;
	border-radius: 0px;
	background-color: #1DB9EC;
	width: 100%;
	margin-top: 10px;
	color:#fff;
}
.at-login-form .signup-or-separator {
	background: none;
	height: 34px;
	position: relative;
	text-align: center;
}
.at-login-form .signup-or-separator--text {
	background-color: #fff;
	display: inline-block;
	padding: 8px;
}

.at-login-form .h6 {
	font-size: 14px;
	font-weight: bold;
	color: #757575;
	line-height: 1.1;
	text-rendering: optimizelegibility;
}

.at-login-form .signup-or-separator hr {
    margin: -25px auto 10px;
    width: 100%;	
 }
 
 .at-login-form .form-control-form {
    display: block;
    width: 100%;
    height: 54px;
    padding: 15px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 0px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    margin-top: 3px;
}   
 .at-login-form .frgt-pswd
{
	margin: 5px 0 10px;
color: red;
}

 .at-login-form .btn-gst
{
	display: inline-block;
padding: 6px 12px;
margin-bottom: 0;
font-size: 14px;
font-weight: 400;
line-height: 1.42857143;
text-align: center;
white-space: nowrap;
vertical-align: middle;
-ms-touch-action: manipulation;
touch-action: manipulation;
cursor: pointer;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
user-select: none;
background-image: none;
border: 1px solid #000;
border-radius: 0px;
background-color: transparent;
}

 .at-login-form .ta-l
{
	text-align:left;
	margin-top: 5px;
}

 .at-login-form .modal-dialog {
    width: 500px;
    margin: 30px auto;
}

.at-login-form .modal-content
{
	padding: 0px 10px;
}

.at-login-form  .modal-header {
    padding: 10px 10px;
    border-bottom: 0px solid #e5e5e5;
}
.blue-bg-nav
{
    background-color:#1DB9EC;
}
/*######################## LOGIN/SIGNUP PAGE  END ##################################*/</style>
<body>

	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3 fixed-top">
        <a class="navbar-brand" href="#">BetRoyale</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                <li class="nav-item active"><a class="nav-link" href="home.do">Home
                        <span class="sr-only">(current)</span>
                    </a></li>
                    
                    
                <c:if test="${empty user }" >
                
                <li class="nav-item"> <a class="nav-link" href="#" data-toggle="modal" data-target="#at-login">Login</a></li>
                
                </c:if>
                
                <c:if test="${not empty user}">
                <li class="nav-item"> <a class="nav-link" href="#">Profile</a></li>
                <li class="nav-item"> <a class="nav-link" href="#">View Events</a></li>
                <li class="nav-item"> <a class="nav-link" href="#">Logout</a></li>
                
                </c:if>
              
                <li class="nav-item"> <form class="form-inline my-2 my-lg-0" action="search.do" method="GET">
                        <input class="form-control mr-sm-2" type="search" name="username" placeholder="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
	
	
	
	<section class="at-login-form">

        <!-- MODAL LOGIN -->
        <div class="modal fade" id="at-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <button class="btn-fb"> <i class="fa fa-fw fa-facebook pull-left" aria-hidden="true"></i>
                            Login with Facebook </button> <br>
                        <button class="btn-gp"> <i class="fa fa-fw fa-google-plus pull-left" aria-hidden="true"></i>
                            Login with Google </button> <br>
                        <div class="signup-or-separator">
                            <span class="h6 signup-or-separator-text">or</span>
                            <hr>
                        </div>
                        <form  action="login.do" method="POST" >
                            <div class="form-group">
                                <input type="text" class="form-control-form " id="username" name="username"
                                    placeholder="Enter Your Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control-form " id="password" name="password"
                                    placeholder="Enter Your Password">
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> Remember me
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-2">
                                    <p class="frgt-pswd" data-toggle="modal" data-dismiss="modal"
                                        data-target="#at-reset-pswd"> Forgot Password</p>
                                </div>
                            </div>
                            <button type="submit" class="btn-lgin">Login</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="inline-block">New User? </p>
                            </div>
                            <div class="col-md-4 col-md-offset-2">
                                <button class="btn-gst" data-toggle="modal" data-dismiss="modal"
                                    data-target="#at-signup">Sign Up </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- MODAL LOGIN ENDS -->

        

        <!-- MODAL SIGNUP -->
        <div class="modal fade" id="at-signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <button class="btn-fb"> <i class="fa fa-fw fa-facebook pull-left" aria-hidden="true"></i>
                            Signup with Facebook </button> <br>
                        <button class="btn-gp"> <i class="fa fa-fw fa-google-plus pull-left" aria-hidden="true"></i>
                            Signup with Google </button> <br>
                        <div class="signup-or-separator">
                            <span class="h6 signup-or-separator-text">or</span>
                            <hr>
                        </div>
                        <button type="submit" class="btn-lgin" data-toggle="modal" data-dismiss="modal"
                            data-target="#at-signup-filling">Signup with Email</button>
                        <hr>
                        <p>By signing up, I agree to BetRoyale's: Payments <a href="#">Terms of Service</a>, <a
                                href="#">Privacy Policy</a>, <a href="#">Refund Policy</a>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="ta-l">Already a Member? </p>
                            </div>
                            <div class="col-md-4 col-md-offset-2">
                                <button class="btn-gst" data-toggle="modal" data-dismiss="modal"
                                    data-target="#at-login">Login</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- MODAL SIGNUP FORM FILLING -->
        <div class="modal fade" id="at-signup-filling" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>

                    <div class="modal-body">
                        <p>Sign up with <a href="#">Facebook</a> or <a href="#">Google</a></p>
                        <div class="signup-or-separator">
                            <span class="h6 signup-or-separator--text">or</span>
                            <hr>
                        </div>
                        <form action="createUser.do" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control-form " id="firstName" name="firstName"
                                    placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control-form " id="lastName" name="lastName"
                                    placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control-form " id="email" name="email"
                                    placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control-form " id="username" name="username"
                                    placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control-form " id="password" name="password"
                                    placeholder="Password">
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">
                                            I’d like to receive updates on My Betting Events.
                                        </label>
                                    </div>

                                    <p>By signing up, I agree to Bet Royale's , Payments <a href="#">Terms of Service</a>,
                                        <a href="#">Privacy Policy</a>, <a href="#">Guest Refund Policy</a>, and <a
                                            href="#">Host Guarantee Terms</a>. </p>
                                </div>
                            </div>
                            <button type="submit" class="btn-lgin">Signup</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <div class="col-md-6">
                                <p class="ta-l">Already a Member? </p>
                            </div>
                            <div class="col-md-4 col-md-offset-2">
                                <button class="btn-gst" data-toggle="modal" data-dismiss="modal"
                                    data-target="#at-login">Login</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- MODAL SIGNUP FORM FILLING -->
        <!-- MODAL FORGOT PASSWORD -->
        <div class="modal fade" id="at-reset-pswd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <p> Enter the email address associated with your account, and we will email you a link to
                                reset your password. </p>
                            <div class="form-group">

                                <input type="email" class="form-control-form " id="exampleInputEmaillog"
                                    placeholder="Email">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        <!-- MODAL HELP -->
        <div class="modal fade" id="at-helping" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control-form " id="exampleInputEmaillog"
                                    placeholder="Enter Your Searches ">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="row">
                            <button class="btn-gst" data-toggle="modal" data-dismiss="modal">Send a reset Link</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
	
	
	
	

		<nav class="navbar fixed-bottom navbar-expand-md navbar-dark bg-dark">
		<div class="container-fluid">


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="about.do">About
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Contact
							Us</a></li>

					<li class="nav-item"><a class="nav-link" href="#">Donate</a></li>
				</ul>

			</div>
		</div>
	</nav>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">

			</script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
		</body>
		</html>
		