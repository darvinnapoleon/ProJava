<%-- 
    Document   : listar
    Created on : 03/10/2019, 03:18:11 PM
    Author     : WS-24
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas</h1>
        <a href="controlador1.do?accion=add">Agregar</a>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>DNI</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <%
                PersonaDAO dao = new PersonaDAO();
                List<Persona>list=dao.listar();
                Iterator<Persona>iter=list.iterator();
                Persona per=null;
                while(iter.hasNext()){
                    per=iter.next();
 
            %>
            <tbody>
                <tr>
                    <td><%= per.getId()%></td>
                    <td><%= per.getDni() %></td>
                    <td><%= per.getNom() %></td>
                    <td>
                        <a href="controlador1.do?accion=editar&id=<%= per.getId()%>">editar</a>
                        <a href="controlador1.do?accion=eliminar&id=<%= per.getId()%>">remover</a>
                    </td>
                    
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
