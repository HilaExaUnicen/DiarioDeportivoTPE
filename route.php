<?php

require_once "Controller/NewsController.php";
require_once "Controller/SectionController.php";
require_once "Controller/LoginController.php";
require_once "Controller/AdminController.php";

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');


    if (!empty($_GET['action'])) {
        $action = $_GET['action'];
    } else {
        $action = 'home'; // acción por defecto si no envían
    }

    $params = explode('/', $action);

    $newsController = new NewsController();
    $sectionController = new SectionController();
    $loginController = new LoginController();
    $adminController = new AdminController();

    switch ($params[0]){
        case 'home':{
            $newsController->showHome();
            break;
        }
        case 'viewSeccion':{
            $sectionController->viewSeccion($params[1]);
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
            $sectionController->deleteSeccion($params[1]);
            break;
        }
        case 'addSeccion':{
            $sectionController->addSeccion();
            break;
        }
        case 'addNoticia':{
            $newsController->addNoticia();
            break;
        }
        case 'updateSeccion':{
            $sectionController->updateSeccion();
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
        case 'adminView':{
            $adminController->showAdmin();
            break;
        }
        case 'deleteUser':{
            $adminController->deleteUser($params[1]);
            break;
        }
        case 'giveAdmin':{
            $adminController->addAdmin($params[1]);
            break;
        }
        case 'removeAdmin':{
            $adminController->removeAdmin($params[1]);
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