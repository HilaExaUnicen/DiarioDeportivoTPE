<?php

require_once "Model/CommentsModel.php";
require_once "View/ApiView.php";

class ApiCommentsController{
    private $model;
    private $view;

    function __construct(){
        $this->model = new CommentsModel();
        $this->view = new ApiView();
    }
    
    function obtenerComentarios(){
        //$idNoticia = $params[":ID"];
        $comentarios = $this->model->getComentariosConUsuario();

        $this->view->response($comentarios, 200);
    }
    
    
    function eliminarComentario($params = []){
        $idComentario = $params[":ID"];
        $comentario = $this->model->getComentario($idComentario);
        
        if($comentario){
            $this->model->eliminarComentario($idComentario);
            $this->view->response("Comentario eliminado", 200);
        }else{
            $this->view->response("Comentario no encontrado", 404);
        }
    }
    
    function insertarComentario(){

        $body = $this->getBody();

        $lastId = $this->model->insertComentario($body->comentario,$body->puntaje, $body->id_noticiafk, $body->id_usuariofk);
        if($lastId != 0){
            $this->view->response("El comentario se inserto con el id=$lastId", 200);
        }
        else{
            $this->view->response("El comentario no se pudo insertar", 500);
        }
    }
    
    private function getBody() {
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }
}