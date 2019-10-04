<%-- 
    Document   : Principal
    Created on : 19/09/2019, 11:07:07 AM
    Author     : DARVIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="StyleSheet" href="css/default.css">

    </head>
    <body>
      <!--  <nav id="header0">
            <a href="" ><img src=""></a>
            <a href="" id="imghea"><img src="img/car.png" ><p>Carro</p></a>
            <a href="" id="imghea"><img src="img/usu.png" class="sub_menu1"><p>Registrate</p></a>
        </nav>-->
        <nav class="nav">
            <ul class="menu_main" >
                <li><a href="" ><img src="img/men.png">Categoria</a>
                    <ul class="sub_menu">
                        <li><a href="">Caramelos</a></li>
                        <li><a href="">Chupetes</a></li>
                    </ul></li>
            <li><a href="">Nuevo</a></li>
            <li><a href="">Consulta</a></li>
            <li><a href="">Ayuda</a></li>
            
            <p>Bienvenido :${usucli}</p>
        <a href="controlador.do?accion=Salir"
        </nav>
        
    </body>
</html>

