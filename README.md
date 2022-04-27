# MidtermProject
## Midterm Project

<!-- PROJECT LOGO -->

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
<br>
<li><strong><em>D</em></strong>elete - Remove Existing Wagers in the database</li>
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
Upon Launch we are brought to Home Page reflected in <strong>/WEB-INF/home</strong>
</li>
<li>
<strong>Find Film By Id</strong> navigates to <strong>findFilmById.html</strong> where the user is prompted for the Film Id they would like to retrieve from the database.
</li>
<ul>
<li>All information for the requested Film is then retrieved by way of the SpringMVC provided <strong>getFilmData.do</strong> RequestMapping found in the <strong>FilmController.java</strong>
</li>
<li>User is then prompted with Two options for the displayed Film</li>
  <ol>
    <li>Delete Film</li>
      <ul>
        <li>The selected film is removed from the database by way of the SpringMVC provided <strong>deleteFilm.do</strong> RequestMapping found in the FilmController.java and user is returned to the aforementioned homepage at <strong>/WEB-INF/home.jsp</strong></li>
      </ul>
    <li>Update Film</li>
      <ul>
        <li>
        The selected film is displayed for editing through <strong>updateFilm.html</strong> with the current values shown</li>
        <li>
        User can then change all given fields to their preferred input and apply them to the database by way of the SpringMVC provided updateFilm.do RequestMapping found in the FilmController.java and then user is returned to the aforementioned homepage at <strong>/WEB-INF/home.jsp</strong>
        </li>
      </ul>
  </ol>

</ul>
<li>
<strong>Add A Film</strong> navigates to <strong>addFilm.html</strong> where the user is prompted to enter the Film's Title, Description, Release Year, Rating, and Length
</li>
  <ul>
    <li>
    When user selects the Submit button all inputed fields are added to the database by way of the SpringMVC provided <strong>addFilm.do</strong> RequestMapping found in the <strong>FilmController.java</strong> and then user is returned to the aforementioned homepage at <strong>/WEB-INF/home.jsp</strong>
    </li>
  </ul>
<li><strong>Search Film by Keyword/Pattern</strong> navigates to <strong>findFilmByKeyword.html</strong> where the user is displayed Films matching the inputed Keyword/Pattern.</li>
  <ul>
    <li> The user is then presented with the option of Updating or Deleting any of the displayed Films.  Update Film! will remove the Film from the database by way of the SpringMVC provided <strong>updateFilm.do</strong> RequestMapping found in the <strong>FilmController.java</strong> and then the user is returned to the aforementioned homepage at <strong>/WEB-INF/home.jsp</strong>
    </li>
    <li> Delete Film! will remove the Film from the database by way of the SpringMVC provided <strong>deleteFilm.do</strong> RequestMapping found in the <strong>FilmController.java</strong> and then the user is returned to the aforementioned homepage at <strong>/WEB-INF/home.jsp</strong>
    </li>
    <li> Update Film! will carry the user through the previously explained update sequence.
    </li>
  </ul>
</ol>

<p align="right">(<a href="#top">back to top</a>)</p>

## Contact

<strong>Developers on Project</strong>

<h4>Miguel Barrios</h4>
<ul>
<li><a href="https://www.linkedin.com/in/andrew-cornelius-584b151a9">LinkedIn</a></li>
<li><a href="https://github.com/MiguelBarrios">Github</a></li>
<li> E-mail: acorneld@gmail.com</li>
</ul>

<h4>Andrew Cornelius</h4>
<ul>
<li><a href="https://www.linkedin.com/in/andrew-cornelius-584b151a9">LinkedIn</a></li>
<li><a href="https://github.com/acorneld">Github</a></li>
<li> E-mail: acorneld@gmail.com</li>
</ul>

<h4>Lucas Paladini</h4>
<ul>
<li><a href="INSERT LINKEDIN LINK HERE">LinkedIn</a></li>
<li><a href="https://github.com/Lpaladini90">Github</a></li>
<li> E-mail: PUT E-MAIL HERE</li>
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

-   [Film Query App Foundation](https://github.com/anthonyb0824/FilmQueryProject)
-   [Film Query App Reference #1](https://github.com/Cagugu/FilmQueryProject)
-   [Film Query App Reference #2](https://github.com/acorneld/FilmQueryProject)
-   [Stack Overflow](https://stackoverflow.com/)
-   [W3 Schools](https://www.w3schools.com/)
-   [Github - othneildrew](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#top">back to top</a>)</p>
