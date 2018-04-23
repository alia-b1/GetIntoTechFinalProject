<!-- Title -->

<title>Logged Out</title>

<!-- Header -->

<h2>Bye bye baby</h2>

<!-- Content -->

      Thanks for logging out; you'll be back!<br><br>

<?php if(!empty($_SESSION)){
    unset ($_SESSION['']);
session_destroy();}

else {

    echo "<a href='login.php'>Click here to log in again</a>";}

?>