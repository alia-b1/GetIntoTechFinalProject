<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        
<!-- Nav Bar -->
        
<div id="navbar">
<a href="?controller=pages&action=home">Home</a>
<a href="?controller=pages&action=about">About</a>
<a href="?controller=pages&action=contact">Contact</a>
 <div class="dropdown">
 <button class="dropbtn">Archive 
   <i class="fa fa-caret-down"></i>
 </button>
 <div class="dropdown-content">
   <a href="#">April 2018</a>
   <a href="#">March 2018</a>
   <a href="#">February 2018</a>
   <a href="#">January 2018</a>
   <a href="#">December 2017</a>
   <a href="#">November 2017</a>
   <a href="#">October 2017</a>
  </div>
  <a href="?controller=user&action=login">Login</a></div>
<div class="topnav-right">

<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
<a href="#" class="google"><i class="fa fa-google"></i></a> 
<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
<a href="#" class="youtube"><i class="fa fa-youtube"></i></a> </div>
 <link href="views/css/styles.css" rel="stylesheet" type="text/css"/>
</div>
        <meta charset="UTF-8">
        <title>Home</title><br>
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>
    </head>
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<center><div class="slideshow-container">

<div class="carousel">
    <img src="views/images/standard/boxoffice.jpeg" style="width:50%">
</div>

<div class="carousel">
  <img src="views/images/standard/carouselpinkstreetscene.jpeg" style="width:50%">
</div>

<div class="carousel">
  <img src="views/images/standard/hollywoodfrombehind.jpeg" style="width:50%">
</div></div></center>        
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("carousel");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>

    <style>
        body {
    background-image: url("views/images/standard/singingintheraincinema.jpeg");
    background-size: contain;
        background-repeat: no-repeat;
}
</style>

        
        <?php
        include ('connection.php');
        
    if (isset($_GET['controller']) && isset($_GET['action'])) {
        $controller = $_GET['controller'];
        $action     = $_GET['action'];
  } else {
        $controller = 'pages';
        $action     = 'home';
  }

    require_once('views/layout.php');
    
        ?>
<br><br>
            <h2>Archive</h2>
              <li><a href="#">April 2018</a></li>
              <li><a href="#">March 2018</a></li>
              <li><a href="#">February 2018</a></li>
              <li><a href="#">January 2018</a></li>
              <li><a href="#">December 2017</a></li>
              <li><a href="#">November 2017</a></li>
              <li><a href="#">October 2017</a></li>
            </ul>
          </div>
        <div>
            <h2>Search</h2>
            <form action="/action_page.php">
  <input type="text" placeholder="Search for movies, categories, etc" name="search2">
  <button type="submit"><i class="fa fa-search"></i></button>
            </form></div>
        
        <h2>Subscribe to our newsletter</h2>
        <div><form action="/action_page.php">
  E-mail address:<br>
  <input type="email" name="E-mail address"><br>
<br>
  <input type="submit">
</form>
        <div class="blog-post">
        <h2 class="blog-post-title">Insert Blog Title</h2>
        <p class="blog-post-meta">Insert Blog Date<>by <>Insert Blogger name</p>

        <p>Insert blog post here</p>
      </div><!-- /.blog-post -->
      <hr>
      <div class="blog-post">
        <h2 class="blog-post-title">Insert Blog Title</h2>
        <p class="blog-post-meta">Insert Blog Date<>by <>Insert Blogger name</p>

        <p>Insert blog post here</p>
      </div><!-- /.blog-post -->
      <hr>
      <div class="blog-post">
        <h2 class="blog-post-title">Insert Blog Title</h2>
        <p class="blog-post-meta">Insert Blog Date<>by <>Insert Blogger name</p>

        <p>Insert blog post here</p>
      </div><!-- /.blog-post -->

            <nav class="blog-pagination">
        <a class="btn btn-outline-primary" href="#">Previous posts</a>
        <a class="btn btn-outline-secondary disabled" href="#">Newer posts</a>
            </nav></div>

<!-- Load font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The social media icon bar -->
<div class="icon-bar">

</div><br>
    <div class="w3-container w3-gray">
        <footer >
            Copyright &COPY; <?= date('Y'); ?>
        </footer>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
