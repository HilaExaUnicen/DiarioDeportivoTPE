<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <title>Diario Deportivo</title>
</head>
<body>
    
    <div class="loginForm">
        <section>
            <h2>Login</h2>
            <form action="verify" method="post">
                <input type="text" name="email" placeholder="Email">
                <input type="password" name="contraseña" placeholder="Contraseña">
                <input type="submit" value="Ingresar">
            </form>
            <h4>{$error}</h4>
        </section>
        
        <section>
            <a class="botonVolver" href="{BASE_URL}home">Volver</a>
        </section>     
    </div>

    <div class="loginForm">
        <section>
            <h2>Registrarse</h2>
            <form action="register" method="post">
                <input type="text" name="nuevoEmail" placeholder="Email">
                <input type="password" name="nuevaContraseña" placeholder="Contraseña">
                <input type="submit" value="Registrarse">
            </form>
        </section>
    </div>
    
</body>
</html>