
package config;

import java.sql.*;

public class Conexion {

    Connection con;

    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdgolosinas", "root", "");
        }catch (Exception e) {
            System.err.println("error" + e);
        }
    }
    public Connection getConnection() {
        return con;
    }
    
}
