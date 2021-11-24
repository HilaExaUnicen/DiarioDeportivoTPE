<?php

require_once "Model/NewsModel.php";
require_once "View/ApiView.php";

class ApiNewsController{
    private $model;
    private $view;

    function __construct(){
        $this->model = new NewsModel();
        $this->view = new ApiView();
    }

    function obtenerNoticias(){
        $noticias = $this->model->getNoticiasConSeccion();

        $this->view->response($noticias, 200);
    }

    function obtenerNoticia($params = []){
        $idNoticia = $params [":ID"];
        $noticia = $this->model->viewNoticia($idNoticia);

        if($noticia){
            $this->view->response($noticia, 200);
        }
        else{
            $this->view->response("La noticia con id=$idNoticia no existe", 404);
        }
    }

    function eliminarNoticia($params = []){
        $idNoticia = $params[":ID"];
        $noticia = $this->model->viewNoticia($idNoticia);

        if($noticia){
            $this->model->deleteNoticiaFromDB($idNoticia);
            return $this->view->response("La noticia se ha eliminado correctamente", 200);
        }
        else{
            return $this->view->response("La tarea con id=$idNoticia no existe", 404);
        }
    }

    function insertarNoticia(){
        $body = $this->getBody();

        $lastId = $this->model->insertNoticia($body->titulo, $body->descripcion, $body->cuerpo, $body->id_seccionfk);
        if($lastId != 0){
            $this->view->response("La tarea se inserto con el id=$lastId", 200);
        }
        else{
            $this->view->response("La tarea no se pudo insertar", 500);
        }
    }

    function actualizarNoticia($params = []) {
        $idNoticia = $params[':ID'];
        $body = $this->getBody();
        
        // TODO: VALIDACIONES -> 400 (Bad Request)

        $tarea = $this->model->viewNoticia($idNoticia);

        if ($tarea) {
            $this->model->updateNoticiaFromDB($body->titulo, $body->descripcion, $body->cuerpo, $idNoticia);
            $this->view->response("La noticia se actualizó correctamente", 200);
        } 
        else {
            return $this->view->response("La noticia con el id=$idNoticia no existe", 404);
        }
    }
    
    private function getBody() {
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }
}