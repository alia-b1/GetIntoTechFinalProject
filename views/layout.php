
<!DOCTYPE html>
<html lang="en">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link href="views/css/blog2.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <!-- Head -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" >
    </head>
    <!-- End of Head -->

    <body>
        <!-- Navigation Bar -->
        <div id="navbar">
            <a href="?controller=pages&action=home">Home</a>
            <a href="?controller=pages&action=about">About</a>
            <a href="?controller=pages&action=contact">Contact</a>
            <a href="?controller=user&action=login">Login</a>
            <a href="?controller=user&action=register">Register</a>
            <a href="?controller=blog&action=readAll">All Posts</a>
            <a href="?controller=blog&action=search">Search</a>
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
            <div class="icon-bar"></div>
        </div>
        <!-- End of Navigation Bar -->

        <!-- Wrapping -->
        <div class="big-wrapper">
            <div class="header-cover section bg-dark-light no-padding">
                <div class="header section" style="background-image: url(https://images.unsplash.com/photo-1510511450816-30c68106b199?ixlib=rb-0.3.5&s=b8ec5e44eabbf55182615ee0e65be14e&auto=format&fit=crop&w=1950&q=80);">
                <div class="header-inner section-inner">
                <div class="blog-info">
                <h2 class="blog-title"><a href="?controller=pages&action=home" rel="home">Blah Blah Land</a></h2></div></div></div>
            </div>
        </div>
        <!-- End of Wrapping -->
        <br>
        <div class="container-fluid" style="padding: 25px">
            <div class="row">
                <div class="col-sm-12 col-md-8">
                    <?php
                        session_start();
                        $path = '/Applications/XAMPP/htdocs/GetIntoTechFinalProject';
                        set_include_path(get_include_path() . PATH_SEPARATOR . $path);
                        require_once('routes.php'); 
                    ?>
                </div>

                <div class="col-sm-12 col-md-4">
                    <!-- Sidebar -->
                    <!-- Other Articles -->
                    <div class="sidebar" role="complementary">
                        <!-- Categories -->
                        <div class="widget widget_tag_cloud mb-2">
                            <div class="widget-content">
                                <h3 class="widget-title">Categories</h3>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=1">Romance</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=2">Comedy</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=3">Science Fiction</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=4">Horror</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=5">Action</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=6">Thriller</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=7">Drama</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=8">Mystery</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=9">Crime</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=10">Animation</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=11">Adventure</a></div>
                                <div class="tagcloud"><a href="?controller=blog&action=category&categoryid=12">Fantasy</a></div>
                            </div>
                        </div>
                        <!-- End of Categories -->
                        <div class="widget pt-5"> 
                            <div class="widget-content">
                                <h3 class="widget-title">Mood Music</h3>
                                <iframe src="https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DXb69UWhjrXsW" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                            </div>
                        </div>
                        <div class="widget widget_recent_entries">
                            <div class="widget-content"><br>		
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
                            </div>
                        </div>
                        <div class="clear"></div>

                        <!-- End of other articles -->
                        
                    </div>
                    <!-- End of Sidebar -->
                </div>
                <!-- End of Wrapper -->

                <div class="clear"></div>
                <!-- End of page -->
            </div>
            
            <div class="row">
                <footer class="blog-footer">
                    <p>
                      <a href="#">Back to top</a>
                    </p>
                </footer>
            </div>
        </div>
        
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <script>
          Holder.addTheme('thumb', {
            bg: '#55595c',
            fg: '#eceeef',
            text: 'Thumbnail'
          });
        </script>
    </body>
</html>
