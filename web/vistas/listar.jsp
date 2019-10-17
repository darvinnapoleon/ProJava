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
        <meta name="viewport" content="width=device-width, user-scalable=yes,
              initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <title>login</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/fontello.css">
    </head>
    <body>
        <header class="main-header">
            <div class="container container_flex">
                <div class="logo-container column column--50">
                    <h1 class="logo">Perales Refresh</h1>
                </div>
            </div>
        </header>
        

        <nav class="main-nav">
            <div class="container container_flex">
                <span class="icon-menu" id="btnmenu"></span>
                <ul class="menu" id="menu">
                    <li class="menu_item"><a href="main" class="menu_link menu_link_select" id="ini">Inicio</a></li>
                    <li class="menu_item"><a href="controlador1.do?accion=listar" class="menu_link" id="cat">Categoria</a></li>
                    <li class="menu_item"><a href="sesion" class="menu_link" id="som">Somos</a></li>
                    <li class="menu_item"><a href="consulta" class="menu_link" id="con">Consulta</a></li>
                    <li class="menu_item"><a href="ayuda" class="menu_link" id="ofe">Ofertas</a></li>
                </ul>
                <div class="social-icon">
                    <a href="controlador1.do?accion=login" class="social-icon_link"><span class="icon-user"></span></a>
                    <a href="" class="social-icon_link"><span class="icon-basket"></span></a>
                </div>
            </div>
        </nav>
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
             <footer class="main-footer">
            <div class="container container_flex">
                <div class="column column--33">
                    <h2 class="column_title">¿Porque visitarnos?</h2>
                    <p class="column_txt">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur labore, cupiditate commodi nam quibusdam maxime velit, soluta neque explicabo, est, ipsa aut animi similique non eum in ipsam dicta nostrum!</p>			
                </div>
                <div class="column column--33">
                    <h2 class="column_title">Contactanos</h2>
                    <p class="column_txt">Mercado Moshoqueque segundo sector</p>
                    <p class="column_txt">Teléfono: 999-999-999</p>
                    <p class="column_txt">golosinasanita.com</p>
                </div>
                <div class="column column--33">
                    <h2 class="column_title">Siguenos en las redes sociales</h2>
                    <p class="column_txt"><a href="" class="icon-facebook">Facebook</a></p>
                    <p class="column_txt"><a href="" class="icon-whatsapp">Escribenos</a></p>
                    <p class="column_txt"><a href="" class="icon-gmail">Consulta</a></p>
                </div>
                <p class="copy">© 2019 Golosinas Anita|Todos los derechos reservados </p>
            </div>	
        </footer>

        <script src="js/menu.js"></script>
        
    </body>
</html>