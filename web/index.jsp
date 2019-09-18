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
        <h1>Formulario 1</h1>
        <form action="procesar.do" method="POST">
            Nombre: <input type="text" name="nom"><br>
            Edad: <input type="text" name="eda"><br>
            <input type="submit" value="enviar datos">

        </form>
    </body>
</html>
