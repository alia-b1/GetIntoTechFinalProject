<?php

include_once'user.php';

class Admin extends User {

    public static function all() {
      $list = [];
      $db = Db::getInstance();
      $req = $db->query('SELECT * FROM blog_user');
      // we create a list of Product objects from the database results
      foreach($req->fetchAll() as $blogger) {
        $list[] = new Blogger($blogger['$id'],$blogger['first_name'], $blogger['last_name'], $blogger['dob'], $blogger['date_joined'], $blogger['password'],$blogger['email']);
      }
      return $list;
    } 

    public static function find($id) {
      $db = Db::getInstance();
      //use intval to make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('SELECT * FROM blog_user WHERE id = :id');
//      the query was prepared, now replace :id with the actual $id value
      $req->execute(array('id' => $id));
      $blogger = $req->fetch();
if($blogger){
      return new Blogger($blogger['first_name'], $blogger['last_name'], $blogger['date_joined']);
    }
    else
    {
        //replace with a more meaningful exception
        throw new Exception('A real exception should go here');
    }
    }

public static function update($email, $first_name, $last_name, $password, $dob) {
    $db = Db::getInstance();
    $sessionemail=$_POST['email'];
    $req = $db->prepare("Update blog_user set email=:email, first_name=:first_name last_name=:last_name, password=:password, dob=:dob where id=:id");
    $req->bindParam(':email', $email);
    $req->bindParam(':first_name', $first_name);
    $req->bindParam(':last_name', $last_name);
    $req->bindParam(':password', $password);
    $req->bindParam(':dob', $dob);

// set name and price parameters and execute
    if(isset($_POST['email'])&& $_POST['email']!=""){
        $filteredEmail = filter_input(INPUT_POST,'email', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['first_name'])&& $_POST['first_name']!=""){
        $filteredFirstName = filter_input(INPUT_POST,'first_name', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['last_name'])&& $_POST['last_name']!=""){
        $filteredLastName = filter_input(INPUT_POST,'last_name', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['password'])&& $_POST['password']!=""){
        $filteredPassword = filter_input(INPUT_POST,'password', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['dob'])&& $_POST['dob']!=""){
        $filteredDOB = filter_input(INPUT_POST,'dob', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    
$email = $filteredEmail;
$first_name = $filteredFirstName;
$last_name = $filteredLastName;
$password = $filteredPassword;
$dob = $filteredDOB;
$req->execute();

//upload product image if it exists
        if (!empty($_FILES[self::InputKey]['name'])) {
		Product::uploadFile($name);
	}

    }
    
    public static function add() {
    $db = Db::getInstance();
    $req = $db->prepare("Insert into product(name, price) values (:name, :price)");
    $req->bindParam(':name', $name);
    $req->bindParam(':price', $price);

// set parameters and execute
    if(isset($_POST['name'])&& $_POST['name']!=""){
        $filteredName = filter_input(INPUT_POST,'name', FILTER_SANITIZE_SPECIAL_CHARS);
    }
    if(isset($_POST['price'])&& $_POST['price']!=""){
        $filteredPrice = filter_input(INPUT_POST,'price', FILTER_SANITIZE_SPECIAL_CHARS);
    }
$name = $filteredName;
$price = $filteredPrice;
$req->execute();

//upload product image
Product::uploadFile($name);
    }

const AllowedTypes = ['image/jpeg', 'image/jpg'];
const InputKey = 'myUploader';

//die() function calls replaced with trigger_error() calls
//replace with structured exception handling
public static function uploadFile(string $name) {

	if (empty($_FILES[self::InputKey])) {
		//die("File Missing!");
                trigger_error("File Missing!");
	}

	if ($_FILES[self::InputKey]['error'] > 0) {
		trigger_error("Handle the error! " . $_FILES[InputKey]['error']);
	}


	if (!in_array($_FILES[self::InputKey]['type'], self::AllowedTypes)) {
		trigger_error("Handle File Type Not Allowed: " . $_FILES[self::InputKey]['type']);
	}

	$tempFile = $_FILES[self::InputKey]['tmp_name'];
        $path = "C:\xampp\htdocs\GetIntoTechFinalProject\views\images";
	$destinationFile = $path . $name . '.jpeg';

	if (!move_uploaded_file($tempFile, $destinationFile)) {
		trigger_error("Handle Error");
	}
		
	//Clean up the temp file
	if (file_exists($tempFile)) {
		unlink($tempFile); 
	}
}
public static function remove($id) {
      $db = Db::getInstance();
      //make sure $id is an integer
      $id = intval($id);
      $req = $db->prepare('delete FROM blog_user WHERE id = :id');
      // the query was prepared, now replace :id with the actual $id value
      $req->execute(array('id' => $id));
  }
  
}
?>
