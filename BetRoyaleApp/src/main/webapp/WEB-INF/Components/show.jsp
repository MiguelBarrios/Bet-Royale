<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    





<input type="hidden" id="userId" name="userId" value="2"/>



<ol>
	<c:forEach var="w" items="${wager}">
					<li>${w.betAmount} </li>
					-------------------------------
				</c:forEach>
	</ol> 



