<?php
class Blog {
    public $id; 
    public $title;
    public $dateCreated;
    protected $user_ID;
    public $category;
    public $content;
    
    public function __construct($ID, $title, $date_created, $user_id, $movie_id, $content) {
      $this->ID= $ID;
      $this->title = $title;
      $this->date_created  = $date_created;
      $this->user_id = $user_id;
      $this->movie_id = $movie_id;
      $this->content = $content;
    }
      public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT * FROM blog');
      // we create a list of Product objects from the database results
      foreach($req->fetchAll() as $blog) {
        $list[] = new Blog ($blog['ID'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['movie_id'], $blog['content']);
      }
      return $list;
    }
    
        public static function find($ID) {
      $db = Db::getInstance();
      //use intval to make sure $id is an integer
      $ID = intval($ID);
      $req = $db->prepare('SELECT * FROM blog WHERE ID = :ID');
      //the query was prepared, now replace :id with the actual $id value
      $req->execute(array('ID' => $ID));
      $blog = $req->fetch();
if($blog){
      return new Blog ($blog['ID'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['movie_id'], $blog['content']);
    }
    else
    {
        //replace with a more meaningful exception
        //re-direct to an error page
        throw new Exception('A real exception should go here');
    }
    }
    
public static function add() {
     $db = Db::getInstance();
    $req = $db->prepare("Insert into blog (title, date_created, user_ID, movie_id, content) values title=:title, date_created=:datetoday, user_ID=:UserID, movie_id:category, content:article");
    $req->bindParam(':id', $ID);
    $req->bindParam(':title', $title);
    $req->bindParam(':datetoday', $date_created);
    $req->bindParam(':UserID', $user_id);
    $req->bindParam(':category', $movie_id);
    $req->bindParam(':article', $content);
    

// set name and price parameters and execute
    if(isset($_POST['name'])&& $_POST['name']!=""){
        $filteredName = filter_input(INPUT_POST,'name', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['datetoday'])&& $_POST['datetoday']!=""){
        $filteredDate = filter_input(INPUT_POST,'datetoday', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['UserID'])&& $_POST['UserID']!=""){
        $filteredUserID = filter_input(INPUT_POST,'UserID', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['category'])&& $_POST['category']!=""){
        $filteredCategory = filter_input(INPUT_POST,'category', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['article'])&& $_POST['article']!=""){
        $filteredArticle = filter_input(INPUT_POST,'article', FILTER_SANITIZE_SPECIAL_CHARS);
    }
$title = $filteredName;
$date_created = $filteredDate;
$user_id = $filteredUserID;
$movie_id = $filteredCategory;
$content = $filteredArticle;

$req->execute();
//upload product image
Product::uploadFile($name);
    }

const AllowedTypes = ['image/jpeg', 'image/jpg'];
const InputKey = 'myUploader';
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

