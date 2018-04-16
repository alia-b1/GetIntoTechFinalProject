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
//          if (!isset($_POST['email']) || !isset($_POST['password'])){
//              return call('pages', 'error');
//          }
//          
//           $user = User::loginUser($_POST['email'], $_POST['password']);
//            $first_name=$user->first_name;
//            $last_name = $user->last_name;
//
//            require_once('views/pages/home.php');
      }
     
    }    
    
}