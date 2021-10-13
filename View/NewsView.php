<?php

require_once "libs/smarty-3.1.39/libs/Smarty.class.php";

class NewsView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function listarNoticias($tablaCompleta, $secciones, $usuario){
        $this->smarty->assign('tablaCompleta', $tablaCompleta);
        $this->smarty->assign('secciones', $secciones);
        $this->smarty->assign('usuario', $usuario);
        $this->smarty->display("templates/index.tpl");
    }

    function showSeccion($seccionView){
        $this->smarty->assign('noticias', $seccionView);
        $this->smarty->display("templates/seccion.tpl");
    }

    function showNoticia($noticia){
        $this->smarty->assign('noticia', $noticia);
        $this->smarty->display("templates/noticia.tpl");
    }

    function showHomeLocation(){
        header("Location:".BASE_URL."home");
    }

    function showLoginLocation(){
        header("Location:".BASE_URL."login");
    }




    





}