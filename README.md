# Bet Royale

<!-- Deployed Site -->
<a href="http://miguelbarrios.me:8080/BetRoyaleApp/">Deployed site</a>
<!-- TABLE OF CONTENTS -->

<details>
  <summary>Table of Contents</summary>
  <ul>
    <li>
      <a href="#about-the-project">About The Project</a>
  </ul>
      <ul>
        <li><a href="#technologies-used">Technologies Used</a></li>
      </ul>
    </li>
  <ul>
    <li><a href="#howitworks">How It Works</a></li>
  </ul>  
  <ul>
    <li><a href="#contact">Contact</a></li>
  </ul>

  <ul>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
    </ul>

</details>

<!-- ABOUT THE PROJECT -->

## About The Project

REPLACE THE CRUD DESCRIPTIONS

<p>Bet Royale is a Dynamic Web Application that allows the user to perform the following operations on a self-created betting site</p>
<ol>
<li><strong><em>C</em></strong>reate - Create a new Event and Wager in the database with the "Create a Event" + "Create a Wager" Button</li>
<br>
<li><strong><em>R</em></strong>ead - View the current information for active Events on the site</li>
<br>
<li><strong><em>U</em></strong>pdate - Update Previously defined Events and Wagers in the database</li>
<li><strong><em>D</em></strong>elete - rather than a delete option for the user, events will be Archived for users upon completion </li>
</ol>
<!--[![Product Name Screen Shot][product-screenshot]](https://example.com) -->

<p align="right">(<a href="#top">back to top</a>)</p>

### Technologies Used

-   [Spring Tools 4](https://spring.io/tools)
-   [Gradle Build Tool](https://gradle.org/install/)
-   [MAMP Free](https://www.mamp.info/en/mac/)
-   [Apache Tomcat v8.5](https://tomcat.apache.org/)
-   [MySQL](https://www.mysql.com/)
-   [Atom Text Editor](https://atom.io/)
-   [Bootstrap v5.1](https://getbootstrap.com)
-   [CSS]()
-   [JavaScript]()
-   [GITHUB]()

<p align="right">(<a href="#top">back to top</a>)</p>

## How It Works

<ol>
<li>
The Bet Royale Dynamic Web App is Run on a Apache Tomahawk v8.5 server and launched through Spring Tool Suite 4
</li>
<li>
Upon Launch we are brought to Splash Page reflected in <strong>/WEB-INF/SplashPage.jsp</strong> clicking the <strong>speculate now</strong> button will bring us to the homepage of Bet Royale.
</li>
<li>
The home displays a page with four current <strong>Active Events</strong>, to enter the actual events and wagers page, the user must create an account.
</li>
<li>
Following the creation of an account, the user is then able to view and edit their profile, events creation page, a leaderboard and user created wagers.
</li>
<ul>
<li>All information for the requested Event is then retrieved by way of the SpringMVC provided <strong>allBetEvents.do</strong> RequestMapping found in the <strong>EventsController.java</strong>
</li>
<li>User is then prompted with Three options for the displayed Events sorting through iterations that alter the view based on user preference, these iterations separate into <strong>Active Events, Expired Events and User Created Events</strong </li>
  <ol>
    <li>Create a Betting Event</li>
      <ul>
        <li>The selected option will direct the SpringMVC to provide and bring the user to <strong>userCreatedEvent.do</strong> RequestMapping found in the EventsController.java and user is returned to the aforementioned profile at <strong>/WEB-INF/login.do</strong> where the user is prompted to enter the Events's Title, Description, End Duration, Contender, Odds, Category, Category Description and a Subcategory. </li>
      </ul>
    <li>View leaderboard</li>
      <ul>
        <li>
        The selected option is displayed for viewing the leaderboard through <strong>getLeaderboard.do</strong> with the current values iterating through the wagers win/loss record</li>
      </ul>
  </ol>

</ul>
<li>
<strong>View My Wagers</strong> navigates to <strong>getWagersForEvent.do</strong> where the user is able to view their expired and current active wagers. Upon clicking an Event the user is also able to view the current wagers placed by other users.
</li>
</ol>

<p align="right">(<a href="#top">back to top</a>)</p>

## Contact

<strong>Developers on Project</strong>

<h4>Miguel Barrios</h4>
<ul>
<li><a href="https://www.linkedin.com/in/miguelbarriosdavila/">LinkedIn</a></li>
<li><a href="https://github.com/MiguelBarrios">Github</a></li>
<li> E-mail: miguelbarriosdavila@gmail.com</li>
</ul>

<h4>Andrew Cornelius</h4>
<ul>
<li><a href="https://www.linkedin.com/in/andrew-cornelius-584b151a9">LinkedIn</a></li>
<li><a href="https://github.com/acorneld">Github</a></li>
<li> E-mail: acorneld@gmail.com</li>
</ul>

<h4>Lucas Paladini</h4>
<ul>
<li><a href="https://www.linkedin.com/in/lucas-paladini/">LinkedIn</a></li>
<li><a href="https://github.com/Lpaladini90">Github</a></li>
<li> E-mail: lpaladini@me.com</li>
</ul>

<h4>Henry Vo</h4>
<ul>
<li><a href="https://www.linkedin.com/in/henry-vo-26b624119/">LinkedIn</a></li>
<li><a href="https://github.com/lightningclear">Github</a></li>
<li> E-mail: vohenry777@gmail.com</li>
</ul>

Project Link: [Bet Royale Mid Term Project](https://github.com/Lpaladini90/MidtermProject)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments


-   [Stack Overflow](https://stackoverflow.com/)
-   [W3 Schools](https://www.w3schools.com/)
-   [Github - othneildrew](https://github.com/othneildrew/Best-README-Template)
-   [getbootstrap.com](https://getbootstrap.com/)

<p align="right">(<a href="#top">back to top</a>)</p>
