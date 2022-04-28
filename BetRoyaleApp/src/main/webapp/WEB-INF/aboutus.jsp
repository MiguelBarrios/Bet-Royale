<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstraphead.jsp"/>
<link rel="stylesheet" href="css/aboutus.css">

</head>
<body>

<div class="about-section">
  <h1>About Us Page</h1>
  <p>Some text about who we are and what we do.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/w3images/team1.jpg" alt="Miguel" style="width:85%">
      <div class="container">
        <h2>Miguel Barrios</h2>
        <p class="title">Scrum Master</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>jane@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <br>

  <div class="column">
    <div class="card">
      <img src="/w3images/team2.jpg" alt="Andrew" style="width:100%">
      <div class="container">
        <h2>Andrew Cornelius</h2>
        <p class="title">Design Master</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>mike@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

<!-- <div class="row"> -->
  <div class="column">
    <div class="card">
      <img src="/w3images/team3.jpg" alt="Lucas" style="width:100%">
      <div class="container">
        <h2>Lucas Paladini</h2>
        <p class="title">Designer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>john@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

<div class="column">
    <div class="card">
      <img src="/w3images/team3.jpg" alt="Henry" style="width:100%">
      <div class="container">
        <h2>Henry Vo</h2>
        <p class="title">Designer</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>john@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>



<jsp:include page="bootstrapfoot.jsp"/>
</body>
</html>