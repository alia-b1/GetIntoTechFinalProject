<p>Article Name: <?php echo $blog->title; ?></p>
<p>Publish Date: <?php echo $blog->date_created; ?></p>
<p>Article:<?php echo $blog->content; ?></p>
<br>
<a href='?controller=blog&action=delete&id=<?php echo $blog->ID; ?>'>Delete Blog Article</a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=update&id=<?php echo $blog->ID; ?>'>Update Blog Article</a> &nbsp; &nbsp;
<?php 