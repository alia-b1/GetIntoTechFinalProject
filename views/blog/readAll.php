<a href="?controller=blog&action=create"><h3>Submit your own Article!</h3></a>
<p>Here is a list of all Blog articles:</p>

<?php foreach($blogs as $blog) { ?>
  <p>
    <?php echo $blog->title; ?> &nbsp; &nbsp;
    <a href='?controller=blog&action=read&id=<?php echo $blog->ID; ?>'>See Blog article</a> &nbsp; &nbsp;
<!--    <a href='?controller=product&action=delete&id=<?php echo $blog->ID; ?>'>Delete article</a> &nbsp; &nbsp;
    <a href='?controller=product&action=update&id=<?php echo $blog->ID; ?>'>Update article</a> &nbsp;-->
  </p>
<?php } ?>
