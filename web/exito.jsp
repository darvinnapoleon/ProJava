<%-- 
    Document   : exito
    Created on : 18/09/2019, 10:34:08 AM
    Author     : DARVIN
--%>
<%@page import="modelo.Persona" %>
<%
Persona p1 =(Persona)request.getSession().getAttribute("persona1");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos recibidos exitosamente</h1>
        <p>Nombre:<%= p1.getNom()%></p>
        <p>Edad:<%= p1.getEda()%></p>
    </body>
</html>
