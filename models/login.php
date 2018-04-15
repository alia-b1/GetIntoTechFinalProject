<?php

class Login {
    protected $email;
    protected $password;

    function __construct($ID, $first_name, $last_name, $user_type) {
        $this->username = $email;
        $this->password = $password;
    }

    public function loginUser($email, $password) {
        $db = Db::getInstance();
        $req = $db->prepare("SELECT u.ID, u.first_name, u.last_name, t.type FROM blog_user as u "
                . "INNER JOIN user_type as t ON u.user_type_id=t.ID"
                . "WHERE u.email= :email AND u.password= :password");
        try {
            $req->execute(['email'=> $email, 'password'=> $password]);
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $_SESSION["id"]=$row["ID"];
                $_SESSION["firstName"]=$row["first_name"];
                $_SESSION["lastName"]=$row["last_name"];
                if($row["type"] =='librarian'){
                    echo $row["type"];
                    header("Location:librarianAccountPage.php");
                }else{
                    header("Location:memberAccountPage.php");
                }
            }
        } catch (PDOException $e) {
            die("Could not login ....." . $e->getMessage());
        }
        unset($stmt);
    }
}
