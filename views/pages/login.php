<!-- Title -->

<title>Login</title>

<!-- Logo -->

<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>

<!-- Header -->

<h2>Login</h2>

<!-- Content -->

<?php

if(!empty($_POST)){
$_SESSION["email"] = $_POST['email'];
$_SESSION["password"] = $_POST['password'];
}
?>

<div class="container py-3">
    <h2 class="instructions"></h2>
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