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
public class ClienteDAO implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    

    @Override
    public int Validar(Cliente per) {
        int r=0;
        String sql = "select * from cliente where usucli=? and concli=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getUsucli());
            ps.setString(2, per.getConcli());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                per.setUsucli(rs.getString("usucli"));
                per.setConcli(rs.getString("concli"));
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
