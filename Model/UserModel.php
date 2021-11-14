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

    function getAdmin(){
        $sentencia = $this->db->prepare("SELECT email FROM usuarios WHERE rol=1");
        $sentencia->execute();
        $admin = $sentencia->fetch(PDO::FETCH_OBJ);
        return $admin;
    }

    function getAllUsers(){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios");
        $sentencia->execute();
        $users = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $users;
    }

    function deleteUserFromDB($idUser){
        $sentencia = $this->db->prepare("DELETE FROM usuarios WHERE id_usuario=?");
        $sentencia->execute(array($idUser));
    }

    function convertUserToAdmin($idUser){
        $sentencia = $this->db->prepare("UPDATE usuarios SET rol=1 WHERE id_usuario=?");
        $sentencia->execute(array($idUser));
    }

    function convertAdminToUser($idUser){
        $sentencia = $this->db->prepare("UPDATE usuarios SET rol=0 WHERE id_usuario=?");
        $sentencia->execute(array($idUser));
    }

}