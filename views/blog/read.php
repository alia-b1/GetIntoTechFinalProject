<!-- Title -->

<!-- Logo -->


<!-- Header -->



<!-- Content -->

<h1 class="article"> <?php echo $blog->title; ?></h1>
<p class="container"><?php echo $blog->content; ?></p>
<h4>Publish Date: <?php echo $blog->date_created; ?></h4>
<br>
<h2>About this movie</h2>
    <?php echo "Film name: $blog->movie_title" ?>
    <br>
<?php echo "Director: $blog->director" ?>
    <br>
<?php echo "Release Year $blog->release_year" ?>
    <br>
<img src="<?php echo $blog->movie_poster?>" alt="Movie Image" style="width:250px;height:250px;">
<br>
<a href='?controller=blog&action=delete&id=<?php echo $blog->ID; ?>'>Delete Blog Article</a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=update&id=<?php echo $blog->ID; ?>'>Update Blog Article</a> &nbsp; &nbsp;
<?php 