<?php

require_once "libs/smarty-3.1.39/libs/Smarty.class.php";


class AdminView{
    
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showAdminView($users, $rol){
        $this->smarty->assign('users', $users);
        $this->smarty->assign('rol', $rol);
        $this->smarty->display("templates/adminView.tpl");
    }

    function showAdminViewLocation(){
        header("Location:".BASE_URL."adminView");
    }
}