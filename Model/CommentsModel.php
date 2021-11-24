<?php

class CommentsModel{
    private $db;

    public function __construct(){
        $this->db = new PDO('mysql:host=localhost;dbname=tpe;charset=utf8', 'root', '');
    }

    public function getComentariosConUsuario(){
        $sentencia = $this->db->prepare("SELECT * FROM comentarios JOIN usuarios ON comentarios.id_usuariofk = usuarios.id_usuario");
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

    public function getComentariosMayorAMenor($idNoticia){
        $sentencia = $this->db->prepare("SELECT * FROM comentarios JOIN usuarios ON comentarios.id_usuariofk = usuarios.id_usuario WHERE id_noticiafk = ? ORDER BY puntaje DESC");
        $sentencia->execute(array($idNoticia));
        $comentariosFiltrados = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comentariosFiltrados;
    }
    
    public function eliminarComentario($idComentario){
        $sentencia = $this->db->prepare("DELETE FROM comentarios WHERE id_comentario = ?");
        $sentencia->execute(array($idComentario));
    }
    
    public function insertComentario($comentario,$puntaje, $idNoticia, $idUsuario){
        $sentencia = $this->db->prepare("INSERT INTO comentarios(comentario, puntaje, id_noticiafk, id_usuariofk) VALUE(?,?,?,?)");
        $sentencia->execute(array($comentario,$puntaje, $idNoticia, $idUsuario));
        return $this->db->lastInsertId();
    }
}