<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!--  // within here- logic to show win/ loss stats
    //call leaderboard comp
    // call  displays for active/expired/user created events-->


<input type="text" id="wrl" name="Win-loss-Ratio" value="Display win-loss"/>	    
	
					${wrl.user} 
			wins:	${wrl.count}
			loss:	${wrl.total-count}
				
				
	   
    
    <!-- <div id ="content-container">
    	<div>
    		<div class="header">Betting Wins/Losses</div>
    		<div class = "content">
    			<div class style="position: relative;"></div>
    			<div class="win-lse"></div>
    				<div>...</div>
    				"Win Rate"
    				"50"
    				"%"
    		</div>
    	</div>
    </div> -->
    
    -----Call Leaderboard component
    <jsp:include page="Components/leaderboardview.jsp" />
    <br>
    <br>
    -----Display Active 
    <jsp:include page="Components/activebetsview.jsp" />
    <br>
    <br>
    -----Display Expired Events
    <jsp:include page="Components/expiredbetsview.jsp" />
    <br>
    <br>
    -----User Created Events
    <jsp:include page="Components/usercreatedbetsview.jsp" />
    <br>
    <br>