<%-- 
    Document   : v_sesusu
    Created on : 22/08/2019, 10:56:00 PM
    Author     : DARVIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicia Sesion</title>
    </head>
    <body>
    <center> <table>
            <form method="POST" action="index.php">
                <tr>
                <td>Ingresar</td>
            </tr>
            <tr>
                <td><input type="text" name="nomusu" placeholder="Tu nombre de usuario"></td>
            </tr>
            <tr>
                <td><input type="password" name="conusu" placeholder="Contraseña"></td>
            </tr>
            <tr>
                <td><input type="submit" name="btningusu" value="Ingresar"></td>
            </tr>
            </form>
        </table></center>
    </body>
</html>
