<?php


class LoginHelper{

    function checkLoggedin(){
        session_start();
        if(!isset($_SESSION['email'])){
            header("Location:".BASE_URL."login");
            die();
        }
    }

    function checkAdmin(){
        session_start();
        if(isset($_SESSION['email'])){
            $log = true;
        }
        else {
            $log = false;
        }
        
        return $log;
    }


}