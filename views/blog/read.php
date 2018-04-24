
<!-- Content -->

<h2 class="post-title"> <?php echo $blog->title; ?></h2>
<p class="container"><?php echo $blog->content; ?></p>
<br>
<strong><h4>Publish Date:</strong> <?php echo $blog->date_created; ?></h4>
<br>
<h2>About this movie</h2>
<strong><?php echo "Film name:</strong> $blog->movie_title" ?>
    <br>
<strong><?php echo "Director:</strong> $blog->director" ?>
    <br>
<<<<<<< Updated upstream
<strong><?php echo "Release Year:</strong> $blog->release_year" ?>
    <br><br>
<img src="<?php echo $blog->movie_poster?>" alt="Movie Image" style="width:250px;height:300px;">
<br>
<br>
<a href='?controller=blog&action=delete&id=<?php echo $blog->ID; ?>'>Delete Blog Article</a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=update&id=<?php echo $blog->ID; ?>'>Update Blog Article</a> &nbsp; &nbsp;
<?php 