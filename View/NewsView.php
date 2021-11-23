<?php

require_once "libs/smarty-3.1.39/libs/Smarty.class.php";

class NewsView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function listarNoticias($tablaCompleta, $secciones, $rol){
        $this->smarty->assign('tablaCompleta', $tablaCompleta);
        $this->smarty->assign('secciones', $secciones);
        $this->smarty->assign('rol', $rol);
        $this->smarty->display("templates/index.tpl");
    }

    function showSeccion($seccionView){
        $this->smarty->assign('noticias', $seccionView);
        $this->smarty->display("templates/seccion.tpl");
    }

    function showNoticia($noticia, $idUsuario){
        $this->smarty->assign('noticia', $noticia);
        $this->smarty->assign('idUsuario', $idUsuario);
        // $this->smarty->assign('rol', $rol);
        $this->smarty->display("templates/noticia.tpl");
    }

    function showHomeLocation(){
        header("Location:".BASE_URL."home");
    }

    function showLoginLocation(){
        header("Location:".BASE_URL."login");
    }




    





}