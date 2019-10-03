<%-- 
    Document   : listar
    Created on : 03/10/2019, 03:18:11 PM
    Author     : WS-24
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="modeloDAO.personaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas</h1>
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
                personaDAO dao = new personaDAO();
                List<Persona>list=dao.listar();
                Iterator<Persona>iter=list.iterator();
                Persona per=null;
                while(iter.hasNext()){
                    per=iter.next();
 
            %>
            <tbody>
                <tr>
                    <td><% per.getId(); %></td>
                    <td><% per.getDni(); %></td>
                    <td><% per.getNom(); %></td>
                    <td>
                        <a>editar</a>
                        <a>remover</a>
                    </td>
                    
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
