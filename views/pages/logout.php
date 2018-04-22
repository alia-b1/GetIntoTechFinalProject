<!-- Title -->


<!-- Logo -->


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