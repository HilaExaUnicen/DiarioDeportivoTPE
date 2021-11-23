<?php


class NewsModel{
    
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe;charset=utf8','root','');
    }


    function viewNoticia($id){
        $sentencia = $this->db->prepare("SELECT * FROM noticias WHERE id_noticia=?");
        $sentencia->execute(array($id));
        $noticia = $sentencia->fetch(PDO::FETCH_OBJ);
        return $noticia;
    }

    function insertNoticia($titulo, $descripcion, $cuerpo, $seccion){
        $sentencia = $this->db->prepare("INSERT INTO noticias(titulo,descripcion,cuerpo,id_seccionfk) VALUE(?,?,?,?)");
        $sentencia->execute(array($titulo, $descripcion, $cuerpo, $seccion));
        return $this->db->lastInsertId();
    }

    function deleteNoticiaFromDB($idNoticia){
        $sentencia = $this->db->prepare("DELETE FROM noticias WHERE id_noticia=?");
        $sentencia->execute(array($idNoticia));
    }

    function updateNoticiaFromDB($titulo, $descripcion, $cuerpo, $idNoticia){
        $sentencia = $this->db->prepare("UPDATE noticias SET titulo=?, descripcion=?, cuerpo=? WHERE id_noticia=?");
        $sentencia->execute(array($titulo, $descripcion, $cuerpo, $idNoticia));
    }

    function getNoticiasConSeccion(){
        $sentencia = $this->db->prepare("SELECT * FROM noticias JOIN secciones ON noticias.id_seccionfk = secciones.id_seccion");
        $sentencia->execute();
        $tablaCompleta = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $tablaCompleta;
    }

    
}