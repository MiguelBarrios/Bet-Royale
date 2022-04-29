<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="userCreateBetEvent.do" method="POST">
   <div class="form-group form-container">
      <input type="hidden" name="userId" value="${user.id}" >
      <label for="name">Event Name</label>
      <input id="name" type="text" placeholder="Betting Event Name" name="name" />
      <label for="description ">Event Description:</label>
      <input id="description" type="text" placeholder="Event Description" name="description" />
      <label for="endDate2">End Close Date: </label>
      <input type="date" id="endDate2" name="endDate2" value="2022-04-27" min="2022-04-27" max="2030-12-31">
      <input style="display: none" name="active" value="1" >
      <div id="contender-info">
         <div id="contender-names">
            <label for="endDate2">Contender</label>
            <input type="text" name="contenderName">
         </div>
         <div id="contender-odds">
            <label for="endDate2">Odds</label>
            <input type="number" name="contenderOdds" min="0" max="100" step="1">
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
