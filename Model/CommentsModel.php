<?php

class CommentsModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=tpe;charset=utf8', 'root', '');
    }

    public function getComentarios(){
        $sentencia = $this->db->prepare("SELECT * FROM comentarios");
        $sentencia->execute();
        $comentarios = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentarios;
    }
    public function getComentario($idComentario){
        $sentencia = $this->db->prepare("SELECT * FROM comentarios WHERE id_comentario = ?");
        $sentencia->execute(array($idComentario));
        $comentario = $sentencia->fetch(PDO::FETCH_OBJ);
        return $comentario;
    }
    public function eliminarComentario($idComentario){
        $sentencia = $this->db->prepare("DELETE FROM comentarios WHERE id_comentario = ?");
        $sentencia->execute(array($idComentario));
    }
    public function insertComentario(){
        
    }
}