<?php

require_once "libs/Router.php";
require_once "Controller/ApiCommentsController.php";

$router = new Router();


$router->addRoute('comentarios', 'GET', 'ApiCommentsController', 'obtenerComentarios');
$router->addRoute('comentarios/:ID', 'GET', 'ApiCommentsController', 'filtrarComentariosPorPuntaje');
$router->addRoute('comentarios/:ID', 'DELETE', 'ApiCommentsController', 'eliminarComentario');
$router->addRoute('comentarios', 'POST', 'ApiCommentsController', 'insertarComentario');


$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
