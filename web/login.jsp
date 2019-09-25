
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="StyleSheet" href="css/default.css">
    </head>
    <body>
        <!--<p>  <?php require 'views/header.php'; ?></p>-->
        <form method="POST" action="controlador.do" name="datusu">
            <table border="0"  class="tabla tabusu">            
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
        <div><!--<p><?php if(isset($this->mensaje)){echo $this->mensaje;}?></p>--> </div>






        <!--<p><? require 'views/footer.php'; ?></p>-->
    </body>
</html>
