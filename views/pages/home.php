<!-- Title -->

<title>Home</title>

<div class="content">
    <?php 
    if (isset($first_name)) { 
        echo '<p>Hello there ' . $first_name . ' ' . $last_name . '!<p>'; 
    } 
    ?>
    <div class="posts">
        <div class="post-header">
            <h1 class="post-title">Live Long and Prosper...</a></h1>
            <div class="post-meta">
                <span class="post-author"><a href='?controller=blog&action=user&userid=2'>@AliaBarakzai</a></span>
                <span class="post-date">03-03-2018</a></span>
            </div>
        </div>
        <div class="post-content">
            <p>I am proud to call my self a Trekkie, I attend conventions, dress up and I even have "Live Long and Prosper" tattooed on my back. My family however, despite my best efforts, will watch the occasional episode but have never embraced the Star Trek world as I have. My husband took me along to the premier of Star Trek in London last night and thank you JJ you converted him in one film, I have been trying for 25 years!</p>
        </div>
        
        <br>
    
        <a href="?controller=blog&action=read&id=24" class="font-weight-bold">Continue reading...</a>
    
        <div class="post-meta-bottom">
            <p class="post-tags">
                <a href="" rel="tag">JJ Abrams</a>
                <a href="?controller=blog&action=category&categoryid=3" rel="tag">Science Fiction</a>
            </p>
        </div>
    </div>
</div>
<!-- End of Article -->



<!-- Post Navigation -->
<div class="post-nav">
    <a class="post-nav-older" title="Previous post" href="?controller=blog&action=read&id=23">
    <h5>Previous post</h5>A gigantic family film</a>
    <a class="post-nav-newer" title="Next post:" href="?controller=blog&action=read&id=25">
    <h5>Next post</h5>Feeling kinda blue!</a>
</div>
<!-- End of Post Navigation -->
<br>
<!-- Comments -->
<div id="respond" class="comment-respond">
    <h3 class="widget-title">Comments:</h3>
    <form action="" method="post" id="commentform" class="comment-form">
    <p class="comment-form-comment"><textarea id="comment" name="comment" cols="45" rows="5" required></textarea></p>
    <p class="comment-form-author"><input id="author" name="author" type="text" placeholder="Name" value="" size="5" /><label for="author">Author</label> <span class="required">*</span></p>
    <p class="comment-form-email"><input id="email" name="email" type="text" placeholder="Email" value="" size="5" /><label for="email">E-mail address:</label> <span class="required">*</span></p>
    <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Submit"/>
</div>