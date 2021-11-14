<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diario Deportivo</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
    <header>
        <h1>Diario deportivo TUDAI</h1>
        <nav>
            {if $rol=="admin"}
                <a class="botonLogin" href="logout">Logout</a><a class="botonLogin" href="adminView">Admin</a>
            {elseif $rol=="usuario"}
                <a class="botonLogin" href="logout">Logout</a>
            {else}
                <a class="botonLogin" href="login">Login</a>
            {/if}
        </nav>
    </header>
    

    <div class="container">
        <h2>Hace click en cada categoria para ver todas las noticias!</h2>
        
       <section class="listaSecciones">
            <ul>
                {foreach from=$secciones item=seccion}
                            {if $rol=="admin"}
                            <li><a href="viewSeccion/{$seccion->id_seccion}">{$seccion->secciones}</a> 
                            -  <a href="deleteSeccion/{$seccion->id_seccion}">Borrar</a>
                            {else}
                                <li><a href="viewSeccion/{$seccion->id_seccion}">{$seccion->secciones}</a> 
                            {/if}
                {/foreach}
            </ul>
        </section>

        <section class="sectionNoticias">
                {foreach from=$tablaCompleta item=tabla}
                        {if $rol=="admin"}
                            <ul class="listaNoticias">
                                <li><h3>{$tabla->secciones} - <a href="viewNoticia/{$tabla->id_noticia}">{$tabla->titulo|truncate:100}</a> --- 
                                <a href="deleteNoticia/{$tabla->id_noticia}">Borrar</a></h3></li>
                                    <ul>
                                        <li>{$tabla->descripcion}</li>
                                    </ul>
                            </ul> 
                        {else}
                            <ul class="listaNoticias">
                                <li><h3>{$tabla->secciones} - <a href="viewNoticia/{$tabla->id_noticia}">{$tabla->titulo|truncate:100}</a></h3></li>
                                    <ul>
                                        <li>{$tabla->descripcion}</li>
                                    </ul>
                            </ul>
                        {/if}  
                {/foreach}                        
        </section>
    </div>
    
        
    
        
    {if $rol=="admin"}
        {include file="CRUDforms.tpl"}
    {/if}

    
</body>
</html>