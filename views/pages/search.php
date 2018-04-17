<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
          <link href="../css/styles.css" rel="stylesheet" type="text/css"/>

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
</div>

                <title>Search</title>
    </head>
    <body>
            <h5 class="my-3 text-center">Search Articles </h5>
            <form action="#" method="post">
                <div class="form-row">
                    <div class="col-sm-6 mb-3">
                        <label for="validationServer01">Search Articles</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" name="search">
                    </div>
                    
                </div>
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
            <table id="searchedBooks" class="table my-3">

                <tbody>
                    <?php 
//                    if(!empty($_POST["search"])){
//                    $search = filter_var($_POST["search"], FILTER_SANITIZE_STRING);
//                    $searched->searchByAll($search);
//                    } 
                    ?>

                </tbody>
            </table>
    </body>
</html>
