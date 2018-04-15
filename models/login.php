<?php

class Login {
    protected $ID;
    protected $first_name;
    protected $last_name;
    protected $user_type;
                
    function __construct($ID, $first_name, $last_name, $user_type) {
        $this->ID = $ID;
        $this->first_name = $first_name;
        $this->last_name = $last_name;
        $this->user_type = $user_type;
    }

    public function loginUser($email, $password) {
        $db = Db::getInstance();
        $req = $db->prepare("SELECT u.ID, u.first_name, u.last_name, t.type FROM blog_user as u "
                . "INNER JOIN user_type as t ON u.user_type_id=t.ID"
                . "WHERE u.email= :email AND u.password= :password");
        $req->bindParam(':email', $email);
        $req->bindParam(':password', $password);
        try {
            $req->execute(['email'=> $email, 'password'=> $password]);
            $user=$req->fetch();
            if ($user){
                return new Login($user['ID'],$user['first_name'], $user['last_name'], $user['type']);
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
