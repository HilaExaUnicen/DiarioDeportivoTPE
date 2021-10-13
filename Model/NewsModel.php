<?php


class NewsModel{
    
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe;charset=utf8','root','');
    }

    function getNoticiasConSeccion(){
        $sentencia = $this->db->prepare("SELECT * FROM noticias JOIN secciones ON noticias.id_seccionfk = secciones.id_seccion");
        $sentencia->execute();
        $tablaCompleta = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $tablaCompleta;
    }

    function getSecciones(){
        $sentencia = $this->db->prepare("SELECT * FROM secciones");
        $sentencia->execute();
        $secciones = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $secciones;
    }

    function getSeccion($id){
        $sentencia = $this->db->prepare("SELECT * FROM noticias WHERE id_seccionfk=?");
        $sentencia->execute(array($id));
        $seccionView = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $seccionView;
    }

    function viewNoticia($id){
        $sentencia = $this->db->prepare("SELECT * FROM noticias WHERE id_noticia=?");
        $sentencia->execute(array($id));
        $noticia = $sentencia->fetch(PDO::FETCH_OBJ);
        return $noticia;
    }

    function deleteNoticiaFromDB($idNoticia){
        $sentencia = $this->db->prepare("DELETE FROM noticias WHERE id_noticia=?");
        $sentencia->execute(array($idNoticia));
    }

    function deleteSeccionFromDB($idSeccion){
        $sentencia = $this->db->prepare("DELETE FROM secciones WHERE id_seccion=?");
        $sentencia->execute(array($idSeccion));
    }

    function insertSeccion($seccion){
        $sentencia = $this->db->prepare("INSERT INTO secciones(secciones) VALUE(?)");
        $sentencia->execute(array($seccion));
    }

    function insertNoticia($titulo, $descripcion, $cuerpo, $seccion){
        $sentencia = $this->db->prepare("INSERT INTO noticias(titulo,descripcion,cuerpo,id_seccionfk) VALUE(?,?,?,?)");
        $sentencia->execute(array($titulo, $descripcion, $cuerpo, $seccion));
    }
    
    function updateSeccionFromDB($inputSeccion, $selectSeccion){
        $sentencia = $this->db->prepare("UPDATE secciones SET secciones=? WHERE id_seccion=?");
        $sentencia->execute(array($inputSeccion, $selectSeccion));  
    }

    function updateNoticiaFromDB($titulo, $descripcion, $cuerpo, $idNoticia){
        $sentencia = $this->db->prepare("UPDATE noticias SET titulo=?, descripcion=?, cuerpo=? WHERE id_noticia=?");
        $sentencia->execute(array($titulo, $descripcion, $cuerpo, $idNoticia));
    }


  
    



}