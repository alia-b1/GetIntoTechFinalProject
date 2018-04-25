<div class="card-columns">
    <?php foreach($blogs as $blog) { ?>
    <div class="card">
        <a href='?controller=blog&action=read&id=<?php echo $blog->ID; ?>'>
            <img class="card-img-top" src="<?php echo $blog->movie_poster?>" alt="Movie Image" style="height:200px;">
            <div class="card-header">
                <?php echo $blog->movie_title; ?>
            </div>
            <div class="card-body">
              <h5 class="card-title"><?php echo $blog->title; ?></h5>
            </div>
        </a>
        <div class="card-footer">
            <small class="text-muted">
                Written by <a href='?controller=blog&action=user&userid=<?php echo $blog->user_id ?>'>@<?php echo $blog->blog_user_first_name . '' . $blog->blog_user_last_name ?></a>
            </small>
        </div> 
    </div>
    <?php } ?>
</div>
