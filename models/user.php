<?php
abstract class User {

    protected $id;
    protected $first_name;
    protected $last_name;
    protected $dob;
    protected $date_joined;
    protected $password;
    protected $email;
    protected $user_type_id;

    public function __construct($id, $first_name, $last_name, $dob,$date_joined,$password, $email, $user_type_id) {
        $this->ID = $id;
        $this->firstName = $first_name;
        $this->lastName = $last_name;
        $this->dob = $dob;
        $this->dateJoined = $date_joined;
        $this->password = $password;
        $this->username = $email;
        $this->user_type_id = $user_type_id;
        
    }

//    public function showName() {
//        return $this->first_name . ' ' . $this->last_name . "\n";
//    }
//    public function showdob() {
//        return $this->dob;
//    }   
//    public function showDateJoined() {
//        return $this->date_joined. "\n";
//    }
//    public function changeEmail($new) {
//        $this->email = $new;
//    }
//    public function changePassword($new) {
//        $this->password = $new;
//    }
}
