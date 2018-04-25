<?php
class Blog {
  public $ID;
  public $title;
  public $dateCreated;
  protected $user_ID;
  public $blog_user_first_name;
  public $blog_user_last_name;
  public $category;
  public $content;
  public $movie_title;
  public $release_year;
  public $director;
  public $movie_poster;

  public function __construct($ID, $title, $date_created, $user_id, $user_first_name, $user_last_name, $movie_id, $content, $movie_title, $release_year, $director, $movie_poster) {
    $this->ID= $ID;
    $this->title = $title;
    $this->date_created  = $date_created;
    $this->user_id = $user_id;
    $this->blog_user_first_name = $user_first_name;
    $this->blog_user_last_name = $user_last_name;
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
    $req = $db->query('SELECT blog.id, blog.title, blog.date_created, blog.user_id, blog_user.first_name, blog_user.last_name, blog.movie_id, blog.content, movie.movie_title, movie.release_year, movie.director, movie.movie_poster FROM blog INNER JOIN movie ON blog.movie_ID = movie.ID INNER JOIN blog_user ON blog.user_id = blog_user.id WHERE blog.id >100;');
    // we create a list of Product objects from the database results
    foreach($req->fetchAll() as $blog) {
      $list[] = new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['first_name'], $blog['last_name'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
    }
    return $list;
  }

  public static function find($ID) {
    $db = Db::getInstance();
    //use intval to make sure $id is an integer
    $ID = intval($ID);
    $req = $db->prepare("SELECT blog.id, blog.title, blog.date_created, blog.user_id, blog_user.first_name, blog_user.last_name, blog.movie_id, blog.content, movie.movie_title, movie.release_year, movie.director, movie.movie_poster FROM blog INNER JOIN movie ON blog.movie_ID = movie.ID INNER JOIN blog_user ON blog.user_id = blog_user.id WHERE blog.ID = :ID");
    //the query was prepared, now replace :id with the actual $id value
    $req->execute(array('ID' => $ID));
    $blog = $req->fetch();

    if($blog){
      return new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['first_name'], $blog['last_name'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
    } else {
      //replace with a more meaningful exception
      //re-direct to an error page
      throw new Exception('A real exception should go here');
    }
  }

  public static function add() {
    $db = Db::getInstance();
    $req = $db->prepare("INSERT INTO blog (ID, title, date_created, user_id, movie_id, content)
    VALUES (null, :title, :datetoday, (SELECT id from blog_user WHERE (password=:password AND email=:email)), :category, :article);");

    $req->bindParam(':title', $title);
    $req->bindParam(':datetoday', $date_created);
    $req->bindParam(':email', $user_id);
    $req->bindParam(':category', $movie_id);
    $req->bindParam(':article', $content);
    $req->bindParam(':password', $password);

    if(isset($_POST['title'])&& $_POST['title']!=""){
      $filteredtitle = filter_input(INPUT_POST,'title', FILTER_SANITIZE_SPECIAL_CHARS);
    }

    if(isset($_POST['datetoday'])&& $_POST['datetoday']!=""){
      $filteredDate = filter_input(INPUT_POST,'datetoday', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['email'])&& $_POST['email']!=""){
      $filteredUserID = filter_input(INPUT_POST,'email', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['category'])&& $_POST['category']!=""){
      $filteredCategory = filter_input(INPUT_POST,'category', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['article'])&& $_POST['article']!=""){
      $filteredArticle = filter_input(INPUT_POST,'article', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['article'])&& $_POST['article']!=""){
      $filteredArticle = filter_input(INPUT_POST,'article', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['password'])&& $_POST['password']!=""){
      $filteredPassword = filter_input(INPUT_POST,'password', FILTER_SANITIZE_SPECIAL_CHARS);
    }

    $title = $filteredtitle;
    $date_created = $filteredDate;
    $user_id = $filteredUserID;
    $movie_id = $filteredCategory;
    $content = $filteredArticle;
    $password = $filteredPassword;

    $req->execute();
    $deletereq = $db->prepare("delete from blog WHERE user_id IS NULL");
    $deletereq->execute();
    $count=$deletereq->rowCount();
    if ($count > 0) {
      require_once('views/pages/errorUser.php');
    } else {
        require_once('views/pages/blogSuccess.php');
    }
  }

  public static function search($search) {
    $db = Db::getInstance();
    //use intval to make sure $id is an integer
    $req = $db->prepare( 'CALL search_blog (:search)');
    $req->bindParam(':search', $search);

    try {
      if($search && $search !=""){
          $filteredSearch = filter_input(INPUT_POST,'search', FILTER_SANITIZE_SPECIAL_CHARS);
      }

      $search=$filteredSearch;
      $req->execute(['search'=>"%".$filteredSearch."%"]);

      foreach($req->fetchAll() as $blog) {
        $list[] = new Blog($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['first_name'], $blog['last_name'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
      }
      
      return $list;
    } catch (PDOException $e) {
      die("Could not complete the search ....." . $e->getMessage());
    }

    unset($search);
  }
  public static function searchCategory($categoryid){
    $list = [];
    $db = Db::getInstance();
    $req = $db->prepare('SELECT blog.id, blog.title, blog.date_created, blog.user_id, blog_user.first_name, blog_user.last_name, blog.movie_id, blog.content, movie.movie_title, movie.release_year, movie.director, movie.movie_poster FROM blog INNER JOIN movie ON blog.movie_ID = movie.ID INNER JOIN blog_user ON blog.user_id = blog_user.id INNER JOIN category on movie.category_ID = category.id WHERE category.id = :categoryid');
    // we create a list of Product objects from the database results
    $req->bindParam(':categoryid', $categoryid);
    $req->execute();
    
    foreach($req->fetchAll() as $blog) {
      $list[] = new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['first_name'], $blog['last_name'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
    }
    return $list;
  }
    
}

