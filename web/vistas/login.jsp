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
                    <li class="menu_item"><a href="./" class="menu_link menu_link_select">Inicio</a></li>
                    <li class="menu_item"><a href="controlcat.do?accion=liscat" class="menu_link">Categoria</a></li>
                    <li class="menu_item"><a href="ayuda" class="menu_link">Ofertas</a></li>
                </ul>
                <div class="social-icon">
                    <a href="controlador1.do?accion=login" class="social-icon_link"><span class="icon-user"></span></a>
                    <a href="" class="social-icon_link"><span class="icon-basket"></span></a>
                </div>
            </div>
        </nav>
        <section class="banner">
		<img src="img/banner1.jpg" alt="" class="banner_img">
		<div class="banner_content">Disfruta de dulcura hoy mismo</div>
	</section>
       
                    <form method="POST" action="controlcli.do" name="datusu">
            <table border="1"  class="tabla tabusu">            
                <tr>
                    <td colspan="2"><center><h1>Iniciar sesión</h1></center></td>
                </tr>
                <tr>
                    <td colspan="2"><center><img src="img/use.png" width="100" height="100"></center></td>
                </tr>
                
                <tr >
                    <td>Usuario</td>
                    <td><input type="text" name="usucli" placeholder="Ingrese usuario" required="" class="input inptex"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="password" name="concli" placeholder="Contraseña" required="" class="input inptex"></td>
                </tr>
                <tr>
                    <td colspan="2"><center><input class ="input inpsub" type="submit" name="accion" value="Ingresar" ></center></td>  
                </tr>
            </table>
        </form>
	
	
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
