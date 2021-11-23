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
        $rol = $this->loginHelper->checkRole();
        
        $this->view->listarNoticias($tablaCompleta, $secciones, $rol);
    }
    
    function viewNoticia($id){
        $noticia = $this->model->viewNoticia($id);
        $idUsuario = $this->loginHelper->returnUserId();
        // $rol = $this->loginHelper->checkRole();
        $this->view->showNoticia($noticia, $idUsuario);
    }

    function deleteNoticia($idNoticia){
        $this->loginHelper->checkAdminLoggedin();
        $this->model->deleteNoticiaFromDB($idNoticia);
        $this->view->showHomeLocation();
    }

    function addNoticia(){
        $this->loginHelper->checkAdminLoggedin();
        $this->model->insertNoticia($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['seccion']);
        $this->view->showHomeLocation();
    }

    function updateNoticia(){
        $this->loginHelper->checkAdminLoggedin();
        $this->model->updateNoticiaFromDB($_POST['titulo'],$_POST['descripcion'],$_POST['cuerpo'],$_POST['noticia']);
        $this->view->showHomeLocation();
    }

}