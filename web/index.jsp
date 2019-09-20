<%-- 
    Document   : index
    Created on : 18/09/2019, 09:57:06 AM
    Author     : DARVIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <!--<form action="procesar.do" method="POST">
            Nombre: <input type="text" name="nom"><br>
            Edad: <input type="text" name="eda"><br>
            <input type="submit" value="enviar datos">
        </form>-->
        <div>
            <form action="controlador.do" method="POST">
                <p>Bienvenidos al sistema</p>
                <div>
                    <label>Nombres:</label>
                    <input type="text" name="nom" placeholder="Ingrese nombres">
                    <label>Email:</label>
                    <input type="email" name="cor" placeholder="example.@gmail.com">
                </div>
                <input type="submit" name="accion" value="Ingresar">   
            </form>
        </div>
    </body>
</html>
