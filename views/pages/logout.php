<!-- Title -->

<title>Log Out</title>

<!-- Logo -->

<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
</div>
  </div>

<!-- Header -->

<h2>Log Out</h2>

<!-- Content -->

<?php if(!empty($_SESSION)){
    unset ($_SESSION['email']);
    unset($_SESSION['password']);
}
session_destroy();

if(empty($_SESSION)){
    echo "Welcome Guest!<br><br>";
    echo "<a href='login.php'>Click here to log in</a>";}

?>