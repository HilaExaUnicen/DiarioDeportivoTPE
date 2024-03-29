<?php

require_once "libs/smarty-3.1.39/libs/Smarty.class.php";

class LoginView{
    
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function mostrarLogin($error = ""){
        $this->smarty->assign('error', $error);
        $this->smarty->display("templates/login.tpl");
    }

    function showHomeLocation(){
        header("Location:".BASE_URL."home");
    }

    function showLoginLocation(){
        header("Location:".BASE_URL."login");
    }



}