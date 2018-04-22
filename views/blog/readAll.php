<!-- Title -->

<title>All blog articles</title>

<!-- Logo -->

<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>

<!-- Header -->

<h2>All blog articles</h2>

<!-- Content -->

<a href="?controller=blog&action=create"><h3>Submit your own article!</h3></a>
<p>Here is a list of all Blog articles:</p>

<?php foreach($blogs as $blog) { ?>
  <p>
    <?php echo $blog->title; ?> &nbsp; &nbsp;
    <a href='?controller=blog&action=read&id=<?php echo $blog->ID; ?>'>See Blog article</a> &nbsp; &nbsp;
<!--    <a href='?controller=product&action=delete&id=<?php echo $blog->ID; ?>'>Delete article</a> &nbsp; &nbsp;
    <a href='?controller=product&action=update&id=<?php echo $blog->ID; ?>'>Update article</a> &nbsp;-->
  </p>
<?php } ?>
