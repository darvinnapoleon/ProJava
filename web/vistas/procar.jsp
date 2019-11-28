<%@page import="java.lang.Math"%>
<%@page import="controlador.controlPro"%>
<%@page import="controlador.controlPed"%>
<%@page import="modelo.Articulo"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
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
        <title>carproducto</title>
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
        <main class="main">
            <section class="group main-about-description" id="tbody-alumnos">
                <a href="javascript:window.history.go(-2);">Seguir comprando</a>
                <% if (articulos == null) { %><h3>No hay productos</h3><% }else{ %> <h3 id="rpts"></h3><% } %>
                <% ProductoDAO dao = new ProductoDAO();
                double total = 0;
                if (articulos != null) {
                    for (Articulo a : articulos) {
                        Producto pro = (Producto) dao.lisprocar(a.getIdpro());
                        total+= a.getCanpro() * pro.getPreven(); %>
                        <div class="container container_flex lisjs" id="fila-<%=pro.getIdpro()%>" style="border: 1px solid #666666;">  
                    <div class="column column--50">
                        <center><img src="controlimg.do?accion=imgpro&idpro=<%=pro.getIdpro()%>" style="height:100px; width: 100px; object-fit: cover;"></center>
                    </div>
                    <div class="column column--50">
                       <h4 class="colum-title"><%=pro.getNompro()%> <%=pro.getNommar()%> de 
                       <%=pro.getNompes()%> <%=pro.getNomsab()%></h4>
                        <span class="today-special_price"> s/<%=pro.getPreven()%> </span>
                        <span>
                            <input type="text" value="<%= a.getCanpro()%>" name="txtcan" 
                                   class="today-special-cantidad" style="text-align:center;"
                                   data-idpro="<%=pro.getIdpro()%>" 
                                   data-pre="<%=pro.getPreven()%>" id="cantidad"/>
                        </span>
                            
                        <span class="today-special_price" id="txt-prosub-<%=pro.getIdpro()%>">s/<%= Math.round(pro.getPreven() * a.getCanpro()*100.0)/100.0%> </span> 
                        <button class="bEliminar"  data-idpro="<%=pro.getIdpro()%>">x</button>
                    </div>
                </div>
                <% } } %> 

            </section>
            <section class="group"> 
                <div class="container container_flex" >  
                    <ul>
                        <li>Sub Total <span id="txt-subtotal">s/<%=Math.round(total*100.0)/100.0 %></span></li>
                        <li>IGV <span>s/0</span></li>
                        <li>Costo de envio <span>s/0</span></li>
                        <li>Total <span id="txt-total">s/<%=Math.round(total*100.0)/100.0 %></span></li>
                    </ul>
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
        <script src="js/carrito.js" type="text/javascript"></script>   
    </body>
</html>


