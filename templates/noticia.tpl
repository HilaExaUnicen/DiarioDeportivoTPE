<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/index.css">
    <title>Document</title>
</head>
<body>
    <header>
        <h1>Diario deportivo TUDAI</h1>
    </header>
    
    <h1>{$noticia->titulo}</h1>
    <h4>{$noticia->descripcion}</h4>
    <p>{$noticia->cuerpo}</p>
    <div class="comentarios">
        <input type="text">
        <button id="postearComentario">Postear comentario</button>
        
        <a class="botonVolver" href="{BASE_URL}home">Volver</a>
    </div>

   
</body>
</html>