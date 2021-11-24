<?php

require_once "libs/Router.php";
// require_once "Controller/ApiNewsController.php";
require_once "Controller/ApiCommentsController.php";

$router = new Router();

// $router->addRoute('noticias', 'GET', 'ApiNewsController', 'obtenerNoticias');
/*$router->addRoute('noticias/:ID', 'GET', 'ApiNewsController', 'obtenerNoticia');
$router->addRoute('noticias/:ID', 'DELETE', 'ApiNewsController', 'eliminarNoticia');
$router->addRoute('noticias', 'POST', 'ApiNewsController', 'insertarNoticia');
$router->addRoute('noticias/:ID', 'PUT', 'ApiNewsController', 'actualizarNoticia');*/
// $router->addRoute('comentarios/:ID', 'GET', 'ApiCommentsController', 'obtenerComentario');

$router->addRoute('comentarios', 'GET', 'ApiCommentsController', 'obtenerComentarios');
$router->addRoute('comentarios/:ID', 'GET', 'ApiCommentsController', 'filtrarComentariosPorPuntaje');
// $router->addRoute('comentarios/:ID1/:ID2', 'GET', 'ApiCommentsController', 'filtrarComentariosPorEstrellas');
$router->addRoute('comentarios/:ID', 'DELETE', 'ApiCommentsController', 'eliminarComentario');
$router->addRoute('comentarios', 'POST', 'ApiCommentsController', 'insertarComentario');


// rutea
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
