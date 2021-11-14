<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <title>Document</title>
</head>
<body>
    <h1>ADMINISTRADOR</h1>
    <div class="divUsuarios">
        <section>
            <ul class="listaUsuarios">
                
                <h3>Lista de administradores</h3>
                {foreach from=$users item=user}
                    {if $user->rol==1}
                        <li class="liUsuarios">{$user->email|truncate:40}<a href="deleteUser/{$user->id_usuario}">Borrar usuario</a>
                        <a href="removeAdmin/{$user->id_usuario}">Quitar permisos</a></li>
                    {/if}
                {/foreach}
                
                <h3>Lista de usuarios</h3>
                {foreach from=$users item=user}
                    {if $user->rol==0}
                         <li class="liUsuarios">{$user->email|truncate:40}<a href="deleteUser/{$user->id_usuario}">Borrar usuario</a>
                         <a href="giveAdmin/{$user->id_usuario}">Dar permisos</a></li>
                    {/if}
                {/foreach}
            </ul>
        </section>
        <section>
            <a class="botonVolver" href="{BASE_URL}home">Volver</a>
        </section>
    </div>
</body>
</html>