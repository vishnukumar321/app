<?php
include_once "lib/load.php";
class user{
    public $conn;
    public $id;
    public $username;
    public function __construct($username)
    {
        if(!$this->conn){
            $this->conn=database::get_conn();
        }
        $conn=$this->conn;
        $sql="SELECT * FROM `signup` WHERE `username` = '$username' OR `id` = '$username'";
        $result=$conn->query($sql);
        if($result->num_rows==1){
            $row=$result->fetch_assoc();
            $this->id=$row['id'];
            $this->username['username'];
        }else{
            throw new Exception("user->__construct sql error");
        }
    }
    public static function signup($name,$email,$phone,$pass){
        $pass=password_hash($pass,PASSWORD_BCRYPT);
        $conn=database::get_conn();
        $sql="INSERT INTO `signup` (`username`, `email`, `phone`, `password`)
VALUES ('$name', '$email', '$phone', '$pass');";
        if($conn->query($sql)==true){
            return true;
        }else{
            return false;
        }
    }
    public static function login($email,$pass){
        $conn=database::get_conn();
        $sql="SELECT * FROM `signup` WHERE `username` = '$email' OR `email` = '$email'";
        $result=$conn->query($sql);
        if($result->num_rows==1){
            $row=$result->fetch_assoc();
            if(password_verify($pass,$row['password'])){
                if(isset($_SESSION['signup'])){
                    unset($_SESSION['signup']);
                }
                return $row['username'];
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
}