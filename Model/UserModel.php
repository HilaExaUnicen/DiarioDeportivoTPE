<?php


class UserModel{
    
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=tpe;charset=utf8','root','');
    }

    function insertarUsuario($email, $password){
        $sentencia = $this->db->prepare("INSERT INTO usuarios(email, contraseña) VALUES (?,?)");
        $sentencia->execute(array($email, $password));
    }

    function getUser($email){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios WHERE email=?");
        $sentencia->execute(array($email));
        $user = $sentencia->fetch(PDO::FETCH_OBJ);
        return $user;
    }


}