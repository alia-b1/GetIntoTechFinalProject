<?php

class User {
    protected $ID;
    public $first_name;
    public $last_name;
    protected $user_type;
                
    function __construct($ID, $first_name, $last_name, $user_type) {
        $this->ID = $ID;
        $this->first_name = $first_name;
        $this->last_name = $last_name;
        $this->user_type = $user_type;
    }

    public function loginUser($emailinput, $passwordinput) {
        $db = Db::getInstance();
        $req = $db->prepare("SELECT u.ID, u.first_name, u.last_name, t.type FROM blog_user as u INNER JOIN user_type as t ON u.user_type_id=t.ID WHERE u.email= :email AND u.password= :password");
        $req->bindParam(':email', $email);
        $req->bindParam(':password', $password);
        try {
            if(isset($_POST['email'])&& $_POST['email']!=""){
                 $filteredEmail = filter_input(INPUT_POST,'email', FILTER_SANITIZE_SPECIAL_CHARS);
            }    
            if(isset($_POST['password'])&& $_POST['password']!=""){
                 $filteredPassword = filter_input(INPUT_POST,'password', FILTER_SANITIZE_SPECIAL_CHARS);
            }
            $email = $filteredEmail;
            $password = $filteredPassword;
            $req->execute();
            $user=$req->fetch();
            if ($user){
                return new User($user['ID'],$user['first_name'], $user['last_name'], $user['type']);
            }

        } catch (PDOException $e) {
            die("Could not login ....." . $e->getMessage());
        }
        unset($stmt);
    }
    
     public function register($emailinput, $passwordinput, $firstnameinput, $lastnameinput, $dobinput) {
        $db = Db::getInstance();
        // Insert new user
        $req = $db->prepare("INSERT INTO blog_user (dob, email, first_name, last_name, password, user_type_id) VALUES (:dob, :email, :first_name, :last_name, :password, 1)");
        $req->bindParam(':email', $email);
        $req->bindParam(':password', $password);
        $req->bindParam(':first_name', $first_name);
        $req->bindParam(':last_name', $last_name);
        $req->bindParam(':dob', $dob);
        try {
            if($emailinput && $emailinput !=""){
                 $filteredEmail = filter_input(INPUT_POST,'email', FILTER_SANITIZE_SPECIAL_CHARS);
            }    
            if($passwordinput && $passwordinput !=""){
                 $filteredPassword = filter_input(INPUT_POST,'password', FILTER_SANITIZE_SPECIAL_CHARS);
            }
            if($firstnameinput && $firstnameinput !=""){
                 $filteredfirst_name = filter_input(INPUT_POST,'first_name', FILTER_SANITIZE_SPECIAL_CHARS);
            }    
            if($lastnameinput && $lastnameinput !=""){
                 $filteredlast_name = filter_input(INPUT_POST,'last_name', FILTER_SANITIZE_SPECIAL_CHARS);               
            }   
            $email = $filteredEmail;
            $password = $filteredPassword;
            $first_name = $filteredfirst_name;
            $last_name = $filteredlast_name;
            $dob = $dobinput; 
            $req->execute();
            
            // Get new user after creating it
            $new_user_req = $db->prepare("SELECT u.ID, u.first_name, u.last_name, t.type FROM blog_user as u INNER JOIN user_type as t ON u.user_type_id=t.ID WHERE u.email= :email");
            $new_user_req->bindParam(':email', $email);
            $new_user_req->execute();
            $user=$new_user_req->fetch();
            return new User($user['ID'],$user['first_name'], $user['last_name'], $user['type']);

        } catch (PDOException $e) {
            die("Could not signup ....." . $e->getMessage());
        }
        unset($stmt);
    }
    
            public static function findAll($search) { 
      $db = Db::getInstance(); 
      //use intval to make sure $id is an integer 
      $req = $db->prepare( 'CALL search_blog (:search)');
//              'SELECT blog.title, blog.date_created, movie.movie_title, blog_user.first_name, blog_user.last_name ,blog.content FROM blog "
//                    . "INNER JOIN movie ON blog.movie_id=movie.ID "
//                    . "INNER JOIN blog_user ON blog.user_id=blog_user.ID "
//                    . "WHERE blog.title LIKE :search UNION SELECT blog.title, blog.date_created, movie.movie_title, blog_user.first_name, blog_user.last_name ,blog.content FROM blog "
//                    .  "INNER JOIN movie ON blog.movie_id=movie.ID "
//                    . "INNER JOIN blog_user ON blog.user_id=blog_user.ID "
//                    . "WHERE movie.movie_title LIKE :search UNION SELECT blog.title, blog.date_created, movie.movie_title, blog_user.first_name, blog_user.last_name ,blog.content FROM blog "
//                    . "INNER JOIN movie ON blog.movie_id=movie.ID "
//                    . "INNER JOIN blog_user ON blog.user_id=blog_user.ID "'); 
      //the query was prepared, now replace :id with the actual $id value 
      $req->bindParam(':search', $search);
      try {
          if($search && $search !=""){
              $filteredSearch = filter_input(INPUT_POST,'search', FILTER_SANITIZE_SPECIAL_CHARS);
          }
          $search=$filteredSearch;
          $req->execute(['search'=>"%".$filteredSearch."%"]);
//          foreach($req->fetchAll() as $searchResults) {
//        $list[] = new Blog ($blog['id'], $blog['title'], $blog['date_created'], $blog['user_id'], $blog['movie_id'], $blog['content'], $blog['movie_title'], $blog['release_year'], $blog['director'], $blog['movie_poster']);
//      }
//      return $list;
//    }
          while ($row = $req->fetch(PDO::FETCH_ASSOC)) {
                echo '<tr><th>' . $row["title"] .$row["movie_title"] . "</th><td>" . $row["first_name"] . "  ". $row["last_name"] . "</td><td> Published on " . $row["date_created"] . "</td><td> Content: " . $row["content"] . "</td></tr>"."<br>";
            }
      } catch (PDOException $e) {
            die("Could not complete the search ....." . $e->getMessage());
        }
        unset($search);
    }
//    { 
//        //replace with a more meaningful exception 
//        throw new Exception('A real exception should go here'); 
//    } 
//    } 
}
