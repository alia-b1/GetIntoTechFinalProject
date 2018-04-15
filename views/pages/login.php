<?php
    session_start();
    //use \classes\Login;
    include "C:\xampp\htdocs\GetIntoTechFinalProject\models\login.php"; 
    if (!empty($_POST)){
        $email= filter_var($_POST['email'], FILTER_SANITIZE_STRING);
        $password= $_POST["password"];
        $log=new Login($email, $password);
        $log->loginUser();
        
    }
    
?>
<!DOCTYPE html>
<html>
   <head>
       <title>Login</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <link rel="stylesheet" href="database.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
   <body>
       <div class="container py-3">
           <h2 class="instructions">Please login</h2>
           <form class="py-3" action="#" method="post">
               <div class="form-group">
                   <label for="exampleDropdownFormEmail1">Email</label>
                   <input type="email" name="username" class="form-control" id="exampleDropdownFormEmail1" placeholder="Username">
               </div>
               <div class="form-group">
                   <label for="exampleDropdownFormPassword1">Password</label>
                   <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
               </div>
               <div class="form-check">
                   <input type="checkbox" class="form-check-input" id="dropdownCheck">
                   <label class="form-check-label" for="dropdownCheck">
                       Remember me
                   </label>
               </div>
               <button type="submit" class="btn btn-primary">Sign in</button>
           </form>
           <div class="dropdown-divider"></div>
           <a class="dropdown-item" href="#">New around here? Sign up</a>
           <a class="dropdown-item" href="#">Forgot password?</a>
       </div>
   </body>
</html>