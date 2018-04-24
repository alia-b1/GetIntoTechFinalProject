<!-- Title -->

<title>All blog articles</title>


<!-- Header -->

<h2>All blog articles</h2>

<!-- Content -->

<a href="?controller=blog&action=create"><h3>Click here to submit your own article!</h3></a><br>

<p><strong>Here is a list of all Blog Articles:</strong></p><br>

<?php foreach($blogs as $blog) { ?>
  <p>
    <?php echo $blog->title; ?> &nbsp; &nbsp;
    <a href='?controller=blog&action=read&id=<?php echo $blog->ID; ?>'>See Blog article</a> <br>&nbsp; &nbsp;
<!--    <a href='?controller=product&action=delete&id=<?php echo $blog->ID; ?>'>Delete article</a> &nbsp; &nbsp;
    <a href='?controller=product&action=update&id=<?php echo $blog->ID; ?>'>Update article</a> &nbsp;-->
  </p>
<?php } ?>
