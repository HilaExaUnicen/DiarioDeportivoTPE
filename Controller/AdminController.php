<?php

require_once "Model/UserModel.php";
require_once "View/AdminView.php";
require_once "Helpers/LoginHelper.php";


class AdminController{
    private $model;
    private $view;
    private $loginHelper;

    function __construct(){
        $this->model = new UserModel();
        $this->view = new AdminView();
        $this->loginHelper = new loginHelper();
    }

    function showAdmin(){
        $rol = $this->loginHelper->adminView();

        $users = $this->model->getAllUsers();
        $this->view->showAdminView($users, $rol);
    }

    function addAdmin($idUser){
        $this->loginHelper->checkAdminLoggedin();

        $this->model->convertUserToAdmin($idUser);
        $this->view->showAdminViewLocation();
    }

    function removeAdmin($idUser){
        $this->loginHelper->checkAdminLoggedin();

        $this->model->convertAdminToUser($idUser);
        $this->view->showAdminViewLocation();    
    }

    function deleteUser($idUser){
        $this->loginHelper->checkAdminLoggedin();
        
        $this->model->deleteUserFromDB($idUser);
        $this->view->showAdminViewLocation();
    }
}