
<!-- Content -->
<div class="row">
    <div class="col-sm-12 col-md-5">
        <img src="<?php echo $blog->movie_poster?>" alt="Movie Image" style="height:300px;">
    </div>
    <div class="col-md-7">
      <h2 class="text-dark"> <?php echo $blog->title; ?></h2>
      <div>Written by <a href="/">@<?php echo $blog->blog_user_first_name . '' . $blog->blog_user_last_name ?></a></div>
      <div class="text-secondary">(<?php echo $blog->date_created; ?>)</div>
      <table class="table mt-4">
          <tbody>
              <tr>
                  <th scope="row">Film name:</th>
                  <th><?php echo $blog->movie_title ?></th>
              </tr>
              <tr>
                  <th scope="row">Director:</th>
                  <th><?php echo $blog->director ?></th>
              </tr>
              <tr>
                  <th scope="row">Release Year:</th>
                  <th><?php echo $blog->release_year ?></th>
              </tr>
          </tbody>
      </table>
    </div>
</div>
<div class="row mt-5">
    <p class="container"><?php echo $blog->content; ?></p>
</div>

<br>
<a href='?controller=blog&action=movie&movieid=<?php echo $blog->movie_id; ?>'><h2>Click here for more articles about this film!</h2></a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=delete&id=<?php echo $blog->ID; ?>'>Delete Blog Article</a> &nbsp; &nbsp;
<br>
<a href='?controller=blog&action=update&id=<?php echo $blog->ID; ?>'>Update Blog Article</a> &nbsp; &nbsp;
<?php 