<?php

require_once "libs/Router.php";
require_once "Controller/ApiNewsController.php";

$router = new Router();

$router->addRoute('noticias', 'GET', 'ApiNewsController', 'obtenerNoticias');
$router->addRoute('noticias/:ID', 'GET', 'ApiNewsController', 'obtenerNoticia');
$router->addRoute('noticias/:ID', 'DELETE', 'ApiNewsController', 'eliminarNoticia');
$router->addRoute('noticias', 'POST', 'ApiNewsController', 'insertarNoticia');
$router->addRoute('noticias/:ID', 'PUT', 'ApiNewsController', 'actualizarNoticia');



// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);