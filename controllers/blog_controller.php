<?php
class BlogController {
    public function ReadAll() {
      // we store all the posts in a variable
      $blogs = Blog::all();
      require_once('views/blog/readAll.php');
    }

    public function read() {
      // we expect a url of form ?controller=posts&action=show&id=x
      // without an id we just redirect to the error page as we need the post id to find it in the database
      if (!isset($_GET['id'])){
        return call('pages', 'error');
      }
      try{
      // we use the given id to get the correct post
      $blog = Blog::find($_GET['id']);
      require_once('views/blog/read.php');
      }
 catch (Exception $ex){
     return call('pages','error');
 }
    }
    public function create() {
      // we expect a url of form ?controller=products&action=create
      // if it's a GET request display a blank form for creating a new product
      // else it's a POST so add to the database and redirect to readAll action
      if($_SERVER['REQUEST_METHOD'] == 'GET'){
          require_once('views/blog/create.php');
      }
      else { 
            Blog::add();
             
            $blogs = Blog::all(); //$products is used within the view
      }
      
    }
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

