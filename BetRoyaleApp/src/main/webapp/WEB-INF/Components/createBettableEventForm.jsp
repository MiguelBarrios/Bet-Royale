<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <!-- Modal -->
      <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">Create Event</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <!--   create event form -->
                  <div class="create-event-form-main">
                     <form action="userCreateBetEvent.do" method="POST">
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
                              <input type="number" name="contenderOdds" min="1" max="100" step="1">
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
                  <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
                  <!--   end create event form -->
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
	   </div>