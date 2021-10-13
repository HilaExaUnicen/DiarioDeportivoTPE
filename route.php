<?php

require_once "Controller/NewsController.php";
require_once "Controller/LoginController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


    if (!empty($_GET['action'])) {
        $action = $_GET['action'];
    } else {
        $action = 'home'; // acción por defecto si no envían
    }

    $params = explode('/', $action);

    $newsController = new NewsController();
    $loginController = new LoginController();

    switch ($params[0]){
        case 'home':{
            $newsController->showHome();
            break;
        }
        case 'viewSeccion':{
            $newsController->viewSeccion($params[1]);
            break;
        }
        case 'viewNoticia':{
            $newsController->viewNoticia($params[1]);
            break;
        }
        case 'deleteNoticia':{
            $newsController->deleteNoticia($params[1]);
            break;
        }
        case 'deleteSeccion':{
            $newsController->deleteSeccion($params[1]);
            break;
        }
        case 'addSeccion':{
            $newsController->addSeccion();
            break;
        }
        case 'addNoticia':{
            $newsController->addNoticia();
            break;
        }
        case 'updateSeccion':{
            $newsController->updateSeccion();
            break;
        }
        case 'updateNoticia':{
            $newsController->updateNoticia();                   
            break;                                              
        }                                                   
        case 'login':{
            $loginController->showLogin();
            break;
        }
        case 'verify':{
            $loginController->verifyLogin();
            break;
        }
        case 'logout':{
            $loginController->logout();
            break;
        }
        case 'register':{
            $loginController->registro();
            break;
        }
        default;{
            echo "Pagina no encontrada";
        }
}