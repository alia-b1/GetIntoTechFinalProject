<!-- Title -->

<title>Search Results</title>

<!-- Logo -->

<!--<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>-->

<!-- Header -->

<h2><?php ECHO count($blogs)?>Search Results</h2>

<!-- Content -->

<a href="?controller=blog&action=create"><h3>Submit your own article!</h3></a>
<!--<p>Here is a list of all Blog articles:</p>-->
<?php
    require_once('views/blog/blogsList.php');
?>