<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="views/css/styles.css">
    <title>Shopping Cart</title>
    <div id="navbar">
<a href="?controller=pages&action=home">Home</a>
<a href="?controller=pages&action=about">About</a>
<a href="?controller=pages&action=contact">Contact</a>
<a href="?controller=blog&action=readAll">All Posts</a>
<a href="?controller=user&action=login">Login</a>
<a href="?controller=user&action=search">Search</a>
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
 </div>
   <div class="topnav-right">

<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
<a href="#" class="google"><i class="fa fa-google"></i></a> 
<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
<a href="#" class="youtube"><i class="fa fa-youtube"></i></a> </div>
</div>
  </head>
  <body>
    <div class="container">
        <header class="blog-header py-3">
          <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-6 d-flex justify-content-start">
<!--              <a class="btn btn-sm btn-outline-secondary" href='?controller=pages&action=home'>Home</a>
            </div>
              <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-6 d-flex justify-content-start">
              <a class="btn btn-sm btn-outline-secondary" href='?controller=blog&action=readAll'>All Blogs</a>
            </div>
            <div class="col-6 d-flex justify-content-end">
                <a class="btn btn-sm btn-outline-secondary" href='?controller=user&action=register'>Sign up</a>
                <a class="btn btn-sm btn-outline-secondary" href='?controller=user&action=login'>Login</a>
            </div>
            <div class="col-6 d-flex justify-content-end">
              <a class="btn btn-sm btn-outline-secondary" href='?controller=user&action=search'>Search</a>-->
            </div>
          </div>
        </header>
          </nav>
        </div>
        
        <div class="w3-container w3-pink">
            <?php
            session_start();
            $path = '/Applications/XAMPP/htdocs/GetIntoTechFinalProject';
set_include_path(get_include_path() . PATH_SEPARATOR . $path);
    require_once('routes.php'); ?>
        </div>
    </div>
      
    <div class="w3-container w3-gray">
<!--        <footer >
            Copyright &COPY; <?= date('Y'); ?>
        </footer>-->
    </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
