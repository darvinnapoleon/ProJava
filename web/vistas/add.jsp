<%-- 
    Document   : add
    Created on : 03/10/2019, 03:18:35 PM
    Author     : WS-24
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Persona</h1>
        <form action="controlador1.do">
            ID:<br>
            <input type="text" name="txtDni"><br>
            <input type="text" name="txtNom"><br>
            <input type="submit" name="accion" value="Agregar"><br>
        </form>
    </body>
</html>
