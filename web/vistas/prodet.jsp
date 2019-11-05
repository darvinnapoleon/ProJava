<%-- 
    Document   : listar
    Created on : 03/10/2019, 03:18:11 PM
    Author     : WS-24
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="modelo.Producto"%>
<%@page import="java.util.List"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=yes,
              initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <title>detproducto</title>
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
                    <li class="menu_item"><a href="./" class="menu_link">Inicio</a></li>
                    <li class="menu_item"><a href="controlcat.do?accion=liscat" class="menu_link menu_link_select">Categoria</a></li>
                    <li class="menu_item"><a href="ayuda" class="menu_link">Ofertas</a></li>
                </ul>
                <div class="social-icon">
                    <a href="controlcli.do?accion=login" class="social-icon_link"><span class="icon-user"></span></a>
                     <a href="controlped.do?accion=vercarrito" class="social-icon_link"><span class="icon-basket"></span></a>
                </div>
            </div>
        </nav>
        <%
            ProductoDAO dao = new ProductoDAO();
            int id = Integer.parseInt((String) request.getAttribute("idpro"));
            Producto p = (Producto) dao.lisprodet(id);
        %> 
        <main class="main">
            <section class="group main-about-description">
                <div class="container container_flex">
                    <div class="column column--50">
                        <img src="controlimg.do?accion=imgpro&idpro=<%=p.getIdpro()%>" alt="" class=""/>
                    </div>
                    <div class="column column--50">
                        <form action="controlped.do" method="POST">
                            <h3 class="colum-title"><%=p.getNompro()%> <%=p.getNommar()%> de <%=p.getNompes()%> <%=p.getNomsab()%></h3>
                            <div class="column--50-space">Precio: <span class="today-special_price"><%=p.getPreven()%></span></div>
                            <input type="hidden" value="<%=p.getIdpro()%>" name="txtidpro">
                            <div class="column--50-space">
                                Cantidad: <select name="txtcanpro" id="" class="column--50-list">
                                    <% for (int i = 1; i < p.getStopro(); i++) {%>
                                    <option value="<%=i%>"><%=i%></option>     
                                    <% }%>
                                </select> 
                            </div>
                            <div class="column--50-space">
                                <input type="submit" value="Agregar al carrito" class="btn">
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>
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


