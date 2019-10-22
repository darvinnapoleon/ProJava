
package modeloDAO;

import interfaces.CRUDPro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import modelo.Producto;
import config.Conexion;
import java.util.ArrayList;

public class ProductoDAO implements CRUDPro{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Producto p = new Producto();

    @Override
    public List listarpro(int id) {
        ArrayList<Producto> list = new ArrayList<>();
        String sql = "select * from producto where idpro="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pro = new Producto();
                pro.setIdpro(rs.getInt("idpro"));
                pro.setNompro(rs.getString("nompro"));
                pro.setPreven(rs.getDouble("preven"));
                pro.setStopro(rs.getInt("stopro"));
               pro.setFotcli(rs.getBinaryStream("fotpro"));
                list.add(pro);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Producto lispro(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addpro(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edipro(Producto pro) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delpro(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   
}
