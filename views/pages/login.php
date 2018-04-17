<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
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
//<<<<<<< Updated upstream
//=======
if(!empty($_POST)){
$_SESSION["email"] = $_POST['email'];
$_SESSION["password"] = $_POST['password'];
}

//>>>>>>> Stashed changes
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
