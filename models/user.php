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
//            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
//                $_SESSION["id"]=$row["ID"];
//                $_SESSION["firstName"]=$row["first_name"];
//                $_SESSION["lastName"]=$row["last_name"];
//                if($row["type"] =='librarian'){
//                    echo $row["type"];
//                    header("Location:librarianAccountPage.php");
//                }else{
//                    header("Location:memberAccountPage.php");
//                }
//            }
        } catch (PDOException $e) {
            die("Could not login ....." . $e->getMessage());
        }
        unset($stmt);
    }
}
