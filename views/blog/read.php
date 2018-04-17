<h1 class="article"> <?php echo $blog->title; ?></h1>
<p class="container"><?php echo $blog->content; ?></p>
<h4>Publish Date: <?php echo $blog->date_created; ?></h4>
<br>
<a href='?controller=blog&action=delete&id=<?php echo $blog->ID; ?>'>Delete Blog Article</a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=update&id=<?php echo $blog->ID; ?>'>Update Blog Article</a> &nbsp; &nbsp;
<?php 