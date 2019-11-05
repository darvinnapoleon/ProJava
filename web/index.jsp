<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=yes,
              initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
        <title>principal</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/fontello.css">
    </head>
        <title>Document</title>
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
                    <a href="controlcli.do?accion=login" class="social-icon_link"><span class="icon-user"></span></a>
                     <a href="controlped.do?accion=vercarrito" class="social-icon_link"><span class="icon-basket"></span></a>
                </div>
            </div>
        </nav>
        <section class="banner">
		<img src="img/banner.jpg" alt="" class="banner_img">
		<div class="banner_content">Disfruta de frescura hoy mismo</div>
	</section>

	<main class="main">
		<section class="group group-color">
			<div class="container">
				<h2 class="main_title">Bienvenido a Golosinas Anita</h2>
				<p class="main_txt">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus natus minus sapiente recusandae repudiandae, dolore exercitationem ea ex corporis numquam, mollitia sint illum labore qui, rerum omnis ab dicta quas!</p>
			</div>
		</section>
		<section class="group today-special">
			<h2 class="group_title">Las mejores ofertas</h2>
			<div class="container container_flex">
				<div class="column column_50-25">
					<img src="img/sub.jpg" alt="" class="today-special_img">
					<div class="today-special_title">Especial del dia 1</div>
					<div class="today-special_price">s/99</div>
				</div>
				<div class="column column_50-25">
					<img src="img/cas.png" alt="" class="today-special_img">
					<div class="today-special_title">Especial del dia 2</div>
					<div class="today-special_price">s/99</div>
				</div>
				<div class="column column_50-25">
					<img src="img/lay.jpg" alt="" class="today-special_img">
					<div class="today-special_title">Especial del dia 3</div>
					<div class="today-special_price">s/99</div>
				</div>
				<div class="column column_50-25">
					<img src="img/cop.jpg" alt="" class="today-special_img">
					<div class="today-special_title">Especial del dia 4</div>
					<div class="today-special_price">s/99</div>
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
