<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




write logic- if NOT completed then do form, if completed then do not.






   
    <form action="updateBetEvent.do" method="post">
 <input type="hidden" id="eventId" name="eventId" value="1"/>

        
            
          <h3>Update Contenders below</h3>

          <br>

	<c:forEach var="e"  items="${event.contenders}">
	<label >${e.name} </label >
 <input type="hidden" id="contenderIds" name="contenderIds" value="${ e.id}"/>
	
      <select class="form-select"name="contenderResult" aria-label="Default select example" >
                <option id="contenderResult" value="0">Lost</option >
                <option id="contenderResult"  value="1">Won</option >
             
              </select>
    
    
      
            <br>
            <br>
        </c:forEach>
        
            <br>
            
            <div class="form-row">
              <div class="form-group col-md-2">
                <label for="inputCity">Complete(Close) Event</label>
                <select class="form-select" aria-label="Default select example" >
                    <option id="completetion" name="completetion" value="1">Closed</option >
                    <option id="completetion"  name="completetion" value="0">Keep Open</option >
               
                </select>
              </div>
              </div>
          
              <br>
          
          <div class="col-4">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
              <label class="form-check-label" for="invalidCheck">
                Finalize Event
              </label>
              <div class="invalid-feedback">
                You must agree before submitting.
              </div>
            </div>
          </div>
          
          
          <button type="submit" class="btn btn-primary">Save</button>
          
        </form>
        


    