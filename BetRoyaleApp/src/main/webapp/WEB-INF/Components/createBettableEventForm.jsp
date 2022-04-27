<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
      Launch demo modal
      </button>
      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <!--   create event form -->
                  <div class="body-content">
                     <form action="userCreateBetEvent.do" method="POST"></form>
                     <div class="form-container">
                        <input style="visibility: hidden" name="userId" value="${user.id}" >
                        <label for="name">Event Name</label>
                        <input id="name" type="text" placeholder="Betting Event Name" name="name" />
                        <label for="description ">Event Description:</label>
                        <input id="description" type="text" placeholder="Event Description" name="description" />
                        <label for="endDate2">End Close Date: </label>
                        <input type="date" id="endDate2" name="endDate2" value="2018-07-22" min="2018-01-01" max="2018-12-31">
                        <input style="display: none" name="active" value="1" >
                        <div id="contender-info">
                           <div id="contender-names">
                              <label for="endDate2">Contender</label>
                              <input type="text" name="contenderName">
                           </div>
                           <div id="contender-odds">
                              <label for="endDate2">Odds</label>
                              <input type="number" name="contenderOdds" min="1", max="100" step="1">
                           </div>
                        </div>
                        <button type="button" class="btn btn-primary" onclick="addContender()">add contender</button>
                        <label for="category">Category</label>
                        <input type="text" name="category"><br>
                        <label for="category">Category Desc</label>
                        <input type="text" name="categorydescription"><br>
                        <div id="sub-cateory-container">
                           <label for="category">Subcategory's</label><br>
                           <input type="text" name="cname">
                        </div>
                        <button type="button" class="btn btn-primary" onclick="addsubcategory()">add subcategory</button>
                     </div>
                     <input type="submit"/>
                     </form>
                  </div>
                  <!--   end create event form -->
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
               </div>
            </div>
         </div>
      </div>    

    
    
<%-- <form action="userCreateBetEvent.do" method="POST">
	
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
		<input style="visibility: hidden" name="active" value="1" >
		 
			 <br>
			 <br> 
			 
	
		 
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
	</form> --%>