<h2>Here is a list of all Blog articles about this Movie:</h2>
<br>
<?php foreach($blogs as $blog) { ?>
  <p>
    <?php echo $blog->movie_title . ": " . $blog->title; ?> &nbsp; &nbsp;
    <a href='?controller=blog&action=read&id=<?php echo $blog->ID; ?>'>See Blog article</a> &nbsp; &nbsp;
<!--    <a href='?controller=product&action=delete&id=<?php echo $blog->ID; ?>'>Delete article</a> &nbsp; &nbsp;
    <a href='?controller=product&action=update&id=<?php echo $blog->ID; ?>'>Update article</a> &nbsp;-->
  </p>
<?php } ?>
 

