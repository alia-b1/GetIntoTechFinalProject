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
   <a href="http://localhost/GetIntoTechFinalProject/index.php?controller=user&action=login">Login</a></div>
   <div class="topnav-right">

<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
<a href="#" class="google"><i class="fa fa-google"></i></a> 
<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
<a href="#" class="youtube"><i class="fa fa-youtube"></i></a> </div>
</div>

</head>
<body>
    
<!--    <style>
    body {
    background-image: url("../images/standard/singingintheraincinema.jpeg");
    background-size: 1000px;
    background-repeat: no-repeat;
}
</style>-->
</body>

<?php
    session_start();
?>
<div class="container py-3">
    <h2 class="instructions">Please login</h2>
    <form class="py-3" method="post">
        <div class="form-group">
            <label for="exampleDropdownFormEmail1">E-mail Address:</label>
            <input type="email" name="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Email"><br><br>
        </div>
        <div class="form-group">
            <label for="exampleDropdownFormPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password"><br><br>
        </div>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="dropdownCheck">
            <label class="form-check-label" for="dropdownCheck">
                Remember me
            </label><br><br>
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button><br><br>
    </form>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">New around here? Sign up</a><br><br>
    <a class="dropdown-item" href="#">Forgot password?</a>
</div>
        <!-- Load font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The social media icon bar -->
<div class="icon-bar"></div>