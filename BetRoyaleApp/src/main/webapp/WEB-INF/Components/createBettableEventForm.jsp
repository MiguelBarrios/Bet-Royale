<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="userCreateBetEvent.do" method="POST">
	
		<input style="visibility: hidden" name="userId" value="${user.id}" >
		 
		 <label for="name">New Betting Event Name: </label>
		 <input id="name" type="text" placeholder="Betting Event Name" name="name" />
			 <br>
			 <br> 
			 <label for="description ">Event Description: 
			 </label>
		 <input id="description" type="text" placeholder="Event Description" name="description" />
		
			 <br>
			 <br> <label for="endDate2">End Date: </label>
		
		 <input id="endDate2" type="text" placeholder="Event End Date" name="endDate2" />
			 <br>
			 <br> 
			 
			 <label for="active">Active </label> 
	<input id="active" type="text" placeholder="active" name="active" />
		 <br> <br> 
		 
  <input type="text" name="contenderName">
  <input type="text" name="contenderName">
  <input type="text" name="contenderName">
  
  <br>
  <br>
  <input type="text" name="contenderOdds">
  <input type="text" name="contenderOdds">
  <input type="text" name="contenderOdds">
  
    	<label for="category">Add Category</label>
  		<input type="text" name="category"><br>
  		
  		<label for="category">Add Category Desc</label>
  		<input type="text" name="categorydescription"><br>
  		
  		
  		<label for="category">Add Sub Categorys:[name, desc]</label><br>
  		<input type="text" name="cname">
  		<input type="text" name="cdescription"><br><br>
  		<input type="text" name="cname">
  		<input type="text" name="cdescription"><br><br>
  
 <input type="submit"/>
	</form>