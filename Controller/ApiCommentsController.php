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
        $comentarios = $this->model->getComentarios();

        $this->view->response($comentarios, 200);
    }
    function obtenerComentario($params = []){
        $idComentario = $params[":ID"];
        $comentario = $this->model->getComentario($idComentario);

        if($comentario){
            $this->view->response($comentario, 200);
        }
        else{
            $this->view->response("El comentario con id=$idComentario no existe", 404);
        }
    }
    function eliminarComentario($params = null){
        $idComentario = $params[":ID"];
        $comentario = $this->model->getComentario($idComentario);
        if($comentario){
            $this->model->eliminarComentario($idComentario);
            $this->view->response("Comentario eliminado", 200);
        }else{
            $this->view->response("Comentario no encontrado", 404);
        }
    }
    function insertarComentario($params = []){
        $body = $this->getBody();

        $this->model->insertComentario($body->comentario);
        /*if(){
            $this->view->response("La tarea se inserto con el id=", 200);
        }
        else{
            $this->view->response("La tarea no se pudo insertar", 500);
        }
    }*/
    private function getBody() {
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }
}