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
            {if $usuario==true}
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
                            <li><a href="viewSeccion/{$seccion->id_seccion}">{$seccion->secciones}</a> 
                            {if $usuario==true}
                            -  <a href="deleteSeccion/{$seccion->id_seccion}">Borrar</a>
                            {/if}
                {/foreach}
            </ul>
        </section>

        <section class="sectionNoticias">
                {foreach from=$tablaCompleta item=tabla}
                        {if $usuario==true}
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
    
        
    
        
    {if $usuario==true}
    <div class="forms">
        <section class="formSeccion">
            <h4>Agregue una nueva seccion</h4>
            <form action="addSeccion" method="post">
                <input type="text" name="seccion" placeholder="Agregue una nueva seccion">
                <input type="submit" value="Agregar">
            </form>

            <h4>Modifique una seccion</h4>
            <form action="updateSeccion" method="post">
                <input type="text" name="inputSeccion" placeholder="Modifique una seccion">
                
                <select name="selectSeccion">
                    {foreach from=$secciones item=seccion}
                            <option value="{$seccion->id_seccion}">{$seccion->secciones}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Modificar">
            </form>
        </section>

        <section class="formNoticia">
            <h4>Agregue una nueva noticia</h4>
            <form action="addNoticia" method="post">
                <input type="text" name="titulo" placeholder="Titulo">
                <input type="text" name="descripcion" placeholder="Descripcion">
                <input type="text" name="cuerpo" placeholder="Cuerpo">
                <select name="seccion">
                    {foreach from=$secciones item=seccion}
                            <option value="{$seccion->id_seccion}">{$seccion->secciones}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Agregar Noticia">
            </form>

            <h4>Modifique una noticia</h4>
            <form action="updateNoticia" method="post">
                <input type="text" name="titulo" placeholder="Titulo">
                <input type="text" name="descripcion" placeholder="Descripcion">
                <input type="text" name="cuerpo" placeholder="Cuerpo">
                <select name="noticia">
                    {foreach from=$tablaCompleta item=noticia}
                        <option value="{$noticia->id_noticia}">{$noticia->titulo|truncate:19}</option>
                    {/foreach}
                </select>
                <input type="submit" value="Modificar">
            </form>
        </section>
    </div>
    {/if}

    
</body>
</html>