<?php
class Blog {
    public $ID; 
    public $title;
    public $dateCreated;
    protected $user_ID;
    public $category;
    public $content;
    public $movie_title;
    public $release_year;
    public $director;
    public $movie_poster;
    
    public function __construct($ID, $title, $date_created, $user_id, $movie_id, $content, $movie_title, $release_year, $director, $movie_poster) {
      $this->ID= $ID;
      $this->title = $title;
      $this->date_created  = $date_created;
      $this->user_id = $user_id;
      $this->movie_id = $movie_id;
      $this->content = $content;
      $this->movie_title = $movie_title;
      $this->release_year = $release_year;
      $this->director = $director;
      $this->movie_poster = $movie_poster;
      
    }
      public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT blog.id, blog.title, blog.date_created, blog.user_id, blog.movie_id, blog.content, movie.movie_title, movie.release_year, movie.director, movie.movie_poster FROM blog INNER JOIN movie ON blog.movie_ID = movie.ID');
      // we create a list of Product objects from the database results
      foreach($req->fetchAll() as $blog) {
        $list[] = new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
      }
      return $list;
    }
    
        public static function find($ID) {
      $db = Db::getInstance();
      //use intval to make sure $id is an integer
      $ID = intval($ID);
      $req = $db->prepare("SELECT blog.id, blog.title, blog.date_created, blog.user_id, blog.movie_id, blog.content, movie.movie_title, movie.release_year, movie.director, movie.movie_poster FROM blog INNER JOIN movie ON blog.movie_ID = movie.ID WHERE blog.ID = :ID");
      //the query was prepared, now replace :id with the actual $id value
      $req->execute(array('ID' => $ID));
      $blog = $req->fetch();
if($blog){
      return new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
    }
    else
    {
        //replace with a more meaningful exception
        //re-direct to an error page
        throw new Exception('A real exception should go here');
    }
    }
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

