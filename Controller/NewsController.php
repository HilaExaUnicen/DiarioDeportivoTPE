<?php

require_once "Model/NewsModel.php";
require_once "View/NewsView.php";
require_once "Helpers/LoginHelper.php";


class NewsController{

    private $model;
    private $view;
    private $loginHelper;

    function __construct(){
        $this->model = new NewsModel();
        $this->view = new NewsView();
        $this->loginHelper = new LoginHelper();
    }
    
    function showHome(){
        $tablaCompleta = $this->model->getNoticiasConSeccion();
        $secciones = $this->model->getSecciones();
        $usuario = $this->loginHelper->checkAdmin();
        
        $this->view->listarNoticias($tablaCompleta, $secciones, $usuario);
    }

    function viewSeccion($id){
        $seccionView = $this->model->getSeccion($id);
        $this->view->showSeccion($seccionView);
    }
    
    function viewNoticia($id){
        $noticia = $this->model->viewNoticia($id);
        $this->view->showNoticia($noticia);
    }

    function deleteNoticia($idNoticia){
        $this->loginHelper->checkLoggedin();
        $this->model->deleteNoticiaFromDB($idNoticia);
        $this->view->showHomeLocation();
    }

    function deleteSeccion($idSeccion){
        $this->loginHelper->checkLoggedin();
        try{
            $this->model->deleteSeccionFromDB($idSeccion);
            $this->view->showHomeLocation();
        }
        catch(Exception $e){
            echo "No se puede borrar la seccion porque tiene noticias";
        }
    }

    function addSeccion(){
        $this->loginHelper->checkLoggedin();
        $this->model->insertSeccion($_POST['seccion']);
        $this->view->showHomeLocation();
    }

    function addNoticia(){
        $this->loginHelper->checkLoggedin();
        $this->model->insertNoticia($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['seccion']);
        $this->view->showHomeLocation();
    }

    function updateSeccion(){
        $this->loginHelper->checkLoggedin();
        $this->model->updateSeccionFromDB($_POST['inputSeccion'], $_POST['selectSeccion']);
        $this->view->showHomeLocation();
    }

    function updateNoticia(){
        $this->loginHelper->checkLoggedin();
        $this->model->updateNoticiaFromDB($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['noticia']);
        $this->view->showHomeLocation();
    }
}