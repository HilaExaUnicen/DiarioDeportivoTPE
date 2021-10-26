<?php

require_once "Model/NewsModel.php";
require_once "Model/SectionModel.php";
require_once "View/NewsView.php";
require_once "Helpers/LoginHelper.php";



class NewsController{

    private $model;
    private $view;
    private $loginHelper;
    private $sectionModel;

    function __construct(){
        $this->model = new NewsModel();
        $this->view = new NewsView();
        $this->loginHelper = new LoginHelper();
        $this->sectionModel = new SectionModel();
    }
    
    function showHome(){
        $tablaCompleta = $this->model->getNoticiasConSeccion();
        $secciones = $this->sectionModel->getSecciones();
        $usuario = $this->loginHelper->checkAdmin();
        
        $this->view->listarNoticias($tablaCompleta, $secciones, $usuario);
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

    function addNoticia(){
        $this->loginHelper->checkLoggedin();
        $this->model->insertNoticia($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['seccion']);
        $this->view->showHomeLocation();
    }

    function updateNoticia(){
        $this->loginHelper->checkLoggedin();
        $this->model->updateNoticiaFromDB($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['noticia']);
        $this->view->showHomeLocation();
    }

}