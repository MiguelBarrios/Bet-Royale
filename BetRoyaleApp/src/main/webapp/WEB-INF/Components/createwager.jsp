<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
    <form action="createWager.do" method="POST">
	
		 <br> <br>
	<input type="hidden" id="userId" name="userId" value="${user.id}"/>	
	<label for="userId"></label>
	
	<input type="text" id="contenderId" name ="contenderId" placeholder="Enter Contender Id"/>
	<label for="contenderId"></label>
	
	<label for="betAmount">Bet Amount: </label> 
	<input id="betAmount"
		type="text" placeholder="Bet Amount" name="betAmount" />
		
		
		 <br> <br>
	 <input type="submit"/>
</form>
	
	
	