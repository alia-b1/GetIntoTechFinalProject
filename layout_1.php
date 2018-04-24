
<!DOCTYPE html>
<html lang="en">
    <link href="views/css/blog2.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<!-- Head -->
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >

</head>
    <!-- End of Head -->

    <!-- Navigation Bar -->
<div id="navbar">
    <a href="?controller=pages&action=home">Home</a>
    <a href="?controller=pages&action=about">About</a>
    <a href="?controller=pages&action=contact">Contact</a>
    <a href="?controller=user&action=login">Login</a>
    <a href="?controller=blog&action=readAll">All Posts</a>
    <a href="?controller=user&action=search">Search</a>
    <div class="dropdown">
        <button class="dropbtn">Archive 
        <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
        <a href="#">April 2018</a>
        <a href="#">March 2018</a>
        <a href="#">February 2018</a>
        <a href="#">January 2018</a>b
        <a href="#">December 2017</a></div></div>
    <div class="topnav-right">
    <a href="http://www.facebook.com" class="facebook"><i class="fa fa-facebook"></i></a> 
    <a href="http://www.twitter.com" class="twitter"><i class="fa fa-twitter"></i></a> 
    <a href="http://www.google.com" class="google"><i class="fa fa-google"></i></a> 
    <a href="http://www.linkedin.com" class="linkedin"><i class="fa fa-linkedin"></i></a>
    <a href="http://www.youtube.com" class="youtube"><i class="fa fa-youtube"></i></a> </div>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="icon-bar">
    </div>
</div>
<!-- End of Navigation Bar -->

<!-- Wrapping -->
<div class="big-wrapper">

<!-- Header -->
<div class="header-cover section bg-dark-light no-padding">
    <div class="header section" style="background-image: url(https://images.unsplash.com/photo-1510511450816-30c68106b199?ixlib=rb-0.3.5&s=b8ec5e44eabbf55182615ee0e65be14e&auto=format&fit=crop&w=1950&q=80);">
    <div class="header-inner section-inner">
    <div class="blog-info">
    <h2 class="blog-title"><a href="?controller=pages&action=home" rel="home">Blah Blah Land</a></h2></div></div></div>
</div>
<!-- End of Header -->

<!-- End of Wrapping -->
</div>
<br>

                <?php
            session_start();
            $path = '/Applications/XAMPP/htdocs/GetIntoTechFinalProject';
set_include_path(get_include_path() . PATH_SEPARATOR . $path);
    require_once('routes.php'); ?>

<!-- Sidebar -->
<!-- Other Articles -->
    <div class="sidebar right" role="complementary">
        <div class="widget widget_recent_entries"><div class="widget-content"><br>		
            <h3 class="widget-title">Other Articles</h3>		
            <ul>                                                                    
            <li>                   
                <a href="?controller=blog&action=read&id=17">Carrey On Jim</a><br>
            <span class="post-date">03-04-2018</span>
            </li>   
            <li>
                <a href="?controller=blog&action=read&id=15">Supergood, actually</a><br>
            <span class="post-date">03-04-2018</span>
            </li>   
            <li>                   
                <a href="?controller=blog&action=read&id=33">You can't sit with us...</a><br>
            <span class="post-date">28-01-2018</span>
            </li>                                       
            <li>                   
                <a href="?controller=blog&action=read&id=20">Vote for Pedro!</a><br>
            <span class="post-date">04-12-2017</span>
            </li>
            </ul>
        </div></div><div class="clear"></div>
        
<!-- End of other articles -->

<!-- Categories -->
    <div class="widget widget_tag_cloud"><div class="widget-content"><h3 class="widget-title">Categories</h3>
    <div class="tagcloud"><a href="Insert link to category here">Romance</a>
    <div class="tagcloud"><a href="Insert link to category here">Comedy</a>
    <div class="tagcloud"><a href="Insert link to category here">Science Fiction</a>
    <div class="tagcloud"><a href="Insert link to category here">Horror</a>
    <div class="tagcloud"><a href="Insert link to category here">Action</a>
    <div class="tagcloud"><a href="Insert link to category here">Thriller</a>
    <div class="tagcloud"><a href="Insert link to category here">Drama</a>
    <div class="tagcloud"><a href="Insert link to category here">Mystery</a>
    <div class="tagcloud"><a href="Insert link to category here">Crime</a>
    <div class="tagcloud"><a href="Insert link to category here">Animation</a>
    <div class="tagcloud"><a href="Insert link to category here">Adventure</a>
    <div class="tagcloud"><a href="Insert link to category here">Fantasy</a>

    </div></div></div></div></div></div></div></div></div></div>
    <div class="clear"></div>
<!-- End of Categories -->

    </div>
<!-- End of Sidebar -->

    </div>
<!-- End of Wrapper -->
    
    <div class="clear"></div>
<!-- End of page -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
    <br>
    
     <div class="w3-container w3-pink">

        </div>
    </div>
      
    <div class="w3-container w3-gray">
<!--        <footer >
            Copyright &COPY; <?= date('Y'); ?>
        </footer>-->
    </div>
        <footer class="blog-footer">
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>
        <margin:auto></margin>
  </body>
</html>
