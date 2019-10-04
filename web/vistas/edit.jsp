<%-- 
    Document   : edit
    Created on : 03/10/2019, 03:18:55 PM
    Author     : WS-24
--%>

<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <% 
            PersonaDAO dao = new PersonaDAO();
            int id = Integer.parseInt((String)request.getAttribute("idper"));
            Persona p = (Persona)dao.list(id);
            %>
            <h1>Editar Persona</h1>
        <form action="controlador1.do">
            ID:<br>
            DNI:<input type="text" name="txtDni" value="<%= p.getDni()%>"><br>
            Nombres:<input type="text" name="txtNom" value="<%= p.getNom()%>"><br>
            <input type="hidden" name="txtid" value="<%= p.getId()%>">
            <input type="submit" name="accion" value="Actualizar"><br>
        </form>
        </div>
        
    </body>
</html>
