/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.*;

/**
 *
 * @author DARVIN
 */
public class Persona1DAC implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    

    @Override
    public int Validar(Persona1 per) {
        int r=0;
        String sql = "select * from persona where Nombres=? and Correo=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getNombres());
            ps.setString(2, per.getCorreo());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                per.setNombres(rs.getString("Nombres"));
                per.setNombres(rs.getString("Correo"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }
        } catch (Exception e) {
            return 0;
        }

    }

}
