<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=yes,
              initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <title>login</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/fontello.css">
    </head>
    <body>
        <main class="main">
            <section class="group main-about-description">
                <div class="container container_flex">
                    <form method="POST" action="controlcli.do" name="datusu">
                        <ul>
                        <li><h2>Iniciar sesión</h2></li>
                        <li><input type="text" name="usucli" placeholder="Ingrese usuario" required="" class="input inptex"></li>
                        <li><input type="password" name="concli" placeholder="Contraseña" required="" class="input inptex"></li>
                        <li><input class ="input inpsub" type="submit" name="accion" value="Registrarse" ></li>       
                    </ul>
                    </form>
                    <a href="controlcli.do?accion=login"><button>Ingresar</button></a>
                </div>
            </section>
        </main>

    </body>
</html>
