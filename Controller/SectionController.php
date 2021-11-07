<?php 

require_once "Model/SectionModel.php";
require_once "View/NewsView.php";
require_once "Helpers/LoginHelper.php";


class SectionController{
    private $model;
    private $view;
    private $loginHelper;

    function __construct(){
        $this->model = new SectionModel();
        $this->view = new NewsView();
        $this->loginHelper = new LoginHelper();
    }

    function viewSeccion($id){
        $seccionView = $this->model->getSeccion($id);
        $this->view->showSeccion($seccionView);
    }

    function addSeccion(){
        $this->loginHelper->checkAdminLoggedin();
        $this->model->insertSeccion($_POST['seccion']);
        $this->view->showHomeLocation();
    }

    function deleteSeccion($idSeccion){
        $this->loginHelper->checkAdminLoggedin();
        try{
            $this->model->deleteSeccionFromDB($idSeccion);
            $this->view->showHomeLocation();
        }
        catch(Exception $e){
            echo "No se puede borrar la seccion porque tiene noticias";
        }
    }

    function updateSeccion(){
        $this->loginHelper->checkAdminLoggedin();
        $this->model->updateSeccionFromDB($_POST['inputSeccion'], $_POST['selectSeccion']);
        $this->view->showHomeLocation();
    }
    
}