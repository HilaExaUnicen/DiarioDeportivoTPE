<?php

class SectionModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe;charset=utf8','root','');
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
    
    function insertSeccion($seccion){
        $sentencia = $this->db->prepare("INSERT INTO secciones(secciones) VALUE(?)");
        $sentencia->execute(array($seccion));
    }

    function deleteSeccionFromDB($idSeccion){
        $sentencia = $this->db->prepare("DELETE FROM secciones WHERE id_seccion=?");
        $sentencia->execute(array($idSeccion));
    }

    function updateSeccionFromDB($inputSeccion, $selectSeccion){
        $sentencia = $this->db->prepare("UPDATE secciones SET secciones=? WHERE id_seccion=?");
        $sentencia->execute(array($inputSeccion, $selectSeccion));  
    }

}
