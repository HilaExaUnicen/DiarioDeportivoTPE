<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/index.css">
    <title>{$noticia->titulo}</title>
</head>
<body>
    <header>
        <h1>Diario deportivo TUDAI</h1>
    </header>
    <div>
        <h1>{$noticia->titulo}</h1>
        <h4>{$noticia->descripcion}</h4>
        <p>{$noticia->cuerpo}</p>
    </div>
    
    <div class="divComentarios">
        <h3>Comentarios</h3>
        
        {if $idUsuario != 0}
        <section>
            <form>
                <input type="text" id="inputComentario" required>
                <select id="puntuacion" required>
                    <option value="*">*</option>
                    <option value="**">**</option>
                    <option value="***">***</option>
                    <option value="****">****</option>
                    <option value="*****">*****</option>
                </select>
                <button id="postearComentario">Postear comentario</button>
                <button id="borrarComentario">Borrar</button>
            </form>
        </section>
        {/if}
        
        <section>
            <ul id="liComentarios" data-idNoticia="{$noticia->id_noticia}" data-idUsuario="{$idUsuario}">
                
            </ul>
        </section>
        <section>
            <a class="botonVolver" href="{BASE_URL}home">Volver</a>
        </section>
    </div>

<script type="text/javascript" src="../js/comments.js"></script>
</body>
</html>