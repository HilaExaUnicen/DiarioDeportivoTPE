<?php


class LoginHelper{

    function checkAdminLoggedin(){
        session_start();
        if($_SESSION['admin'] != 1){
            header("Location:".BASE_URL."login");
            die();
        }
    }

    function checkRole(){
        session_start();
        if(isset($_SESSION['email']) && $_SESSION['admin'] == 1){
            $rol = "admin";
        }
        elseif (isset($_SESSION['email']) && ($_SESSION['admin'] != 1)){
            $rol = "usuario";
        }
        else{
            $rol = "invitado";
        }
        
        return $rol;
    }

    function returnUserId(){
        session_start();
        if(isset($_SESSION['id_usuario'])){
            $idUsuario = $_SESSION['id_usuario'];
            return $idUsuario;
        }
    }

    function adminView(){
        session_start();
        if($_SESSION['admin'] != 1){
            header("Location:".BASE_URL."login");
            die();
        }
        else{
        
        if(isset($_SESSION['email']) && $_SESSION['admin'] == 1){
            $log = "admin";
        }
        elseif (isset($_SESSION['email']) && ($_SESSION['admin'] != 1)){
            $log = "usuario";
        }
        else{
            $log = "invitado";
        }
        
            return $log;

        }
    }


}