<!-- Header -->

<h2>All <?php echo count($blogs) ?> blog articles</h2>

<!-- Content -->

<a href="?controller=blog&action=create"><h3>Click here to submit your own article!</h3></a><br>

<?php
    require_once('views/blog/blogsList.php');
?>