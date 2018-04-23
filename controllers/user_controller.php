<?php

class UserController {
    public function login() {
        if($_SERVER['REQUEST_METHOD'] == 'GET'){
          require_once('views/pages/login.php');
          
      }
      else { 
          
          if (!isset($_POST['email']) || !isset($_POST['password'])){
              return call('pages', 'error');
          }
          
           $user = User::loginUser($_POST['email'], $_POST['password']);
            $first_name=$user->first_name;
            $last_name = $user->last_name;

            require_once('views/pages/home.php');
      }
     
    }

    public function register() {
        if($_SERVER['REQUEST_METHOD'] == 'GET'){
          require_once('views/pages/register.php');
          
      }
      else { 
          if (!isset($_POST['email']) || !isset($_POST['password']) || !isset($_POST['first_name']) || !isset($_POST['last_name']) || !isset($_POST['dob'])){
              return call('pages', 'error');
          }
          
           $user = User::register($_POST['email'], $_POST['password'], $_POST['first_name'],$_POST['last_name'],$_POST['dob']);
            $first_name=$user->first_name;
            $last_name = $user->last_name;

            require_once('views/pages/home.php');
      }
     
    }    
    
    public function search() {
      // we expect a url of form ?controller=posts&action=show&id=x
      // without an id we just redirect to the error page as we need the post id to find it in the database
     if ($_SERVER['REQUEST_METHOD'] === 'GET'){
     require_once ('views/pages/search.php');
     }
     else {
         $searchResults = User::findAll($_POST['search']);
         foreach ($searchResults as $searchResult) {
           echo $searchResult;  
         }
     }
    }
}
////        if (!isset($_POST['search'])){
////          require_once('views/pages/search.php');
////      }
//        return call('pages', 'error');
//      }
//      try{
//      // we use the given id to get the correct post
//      $user = User::findAll($_POST['search']);
////      $user = Blogger::find($id);
//      require_once('views/pages/search.php');
//      }
//      