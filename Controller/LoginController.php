<?php

require_once "Model/UserModel.php";
require_once "View/LoginView.php";



class LoginController{
    
    private $model;
    private $view;

    function __construct(){
        $this->model = new UserModel();
        $this->view = new LoginView();
    }


    function showLogin(){
        $this->view->mostrarLogin();
    }

    function registro(){
        if(!empty($_POST['nuevoEmail']) && !empty($_POST['nuevaContraseña'])){
            $userEmail = $_POST['nuevoEmail'];
            $userContraseña = password_hash($_POST['nuevaContraseña'], PASSWORD_BCRYPT);
            $this->model->insertarUsuario($userEmail, $userContraseña);
            //agregue que inicie sesion despues del registro    
            session_start();
            $_SESSION['email'] = $userEmail;
            $this->view->showHomeLocation();
            
        }
    }

    function verifyLogin(){
        if (!empty($_POST['email']) && !empty($_POST['contraseña'])) {
            $email = $_POST['email'];
            $contraseña = $_POST['contraseña'];
     
            $user = $this->model->getUser($email);
     
            if ($user && password_verify($contraseña, $user->contraseña)) {

                session_start();
                $_SESSION['email'] = $email;
                $_SESSION['admin'] = 1;
                $this->view->showHomeLocation();
            
            } 
            else {
                $this->view->mostrarLogin("El email o la contraseña no coinciden");
            }
        }
    }

    function logout(){
        session_start();
        session_destroy();
        $this->view->mostrarLogin("Saliste de tu cuenta!");
    }




   
}