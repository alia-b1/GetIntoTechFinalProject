<?php
include ('C:\xampp\htdocs\GetIntoTechFinalProject\models\login.php');
class UserController {

    public function login() {
        if($_SERVER['REQUEST_METHOD'] == 'GET'){
          require_once('views/pages/login.php');
          
      }
      else { 
          
          if (!isset($_POST['email']) || !isset($_POST['password'])){
              return call('pages', 'error');
          }
          
            Login::loginUser($_POST['email'], $_POST['password']);

            require_once('C:\xampp\htdocs\GetIntoTechFinalProject\index.php');
      }
      require_once('views/pages/login.php');
    }    
    
}