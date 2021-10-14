<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/index.css">
    <title>Diario deportivo</title>
</head>
<body>
    <header>
        <h1>Diario deportivo TUDAI</h1>
    </header>

        {foreach from=$noticias item=noticia}
                <section class="noticiaPorSeccion">
                    <h2>{$noticia->titulo}</h2>
                    <h4>{$noticia->descripcion}</h4>
                    <p>{$noticia->cuerpo}</p>
                </section>
        {/foreach}
        
            <a class="botonVolver" href="{BASE_URL}home">Volver</a>
</body>
</html>