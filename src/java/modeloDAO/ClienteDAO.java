
package modeloDAO;

import interfaces.CRUDCli;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import modelo.Cliente;
import config.Conexion;
import java.util.ArrayList;

public class ClienteDAO implements CRUDCli{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente c = new Cliente();
    @Override
    public int valcli(Cliente cli) {
        int r=0;
        String sql = "select * from cliente where usucli=? and concli=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, cli.getUsucli());
            ps.setString(2, cli.getConcli());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                cli.setUsucli(rs.getString("usucli"));
                cli.setConcli(rs.getString("concli"));
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

    @Override
    public List listarcli() {
        ArrayList<Cliente> list = new ArrayList<>();
        String sql = "select * from cliente";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setIdcli(rs.getInt("idcli"));
                cli.setNomcli(rs.getString("nomcli"));
                cli.setApecli(rs.getString("apecli"));
                cli.setTelcli(rs.getString("telcli"));
                cli.setUsucli(rs.getString("usucli"));
               // per.setFotcli(rs.getString("fotcli"));
                list.add(cli);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Cliente liscli(int id) {
        String sql = "select * from cliente where idcli=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setIdcli(rs.getInt("idcli"));
                c.setNomcli(rs.getString("nomcli"));
                c.setApecli(rs.getString("apecli"));
                c.setTelcli(rs.getString("telcli"));
                c.setUsucli(rs.getString("usucli"));
                //c.setFotcli(rs.getString("fotcli"));

            }
        } catch (Exception e) {

        }
        return c;
    }

    @Override
    public boolean addcli(Cliente cli) {
        String sql = "insert into cliente (nomcli, apecli, telcli, usucli, concli, fotcli) values('" + cli.getNomcli() + "','" + cli.getApecli() + "','" + cli.getTelcli() + "','" + cli.getUsucli() + "','" + cli.getConcli() + "','" + cli.getFotcli() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean edicli(Cliente cli) {
        String sql = "update  cliente set nomcli='" + cli.getNomcli() + "',apecli='" + cli.getApecli() + "',telcli='" + cli.getTelcli() + "',usucli='" + cli.getUsucli() + "',concli='" + cli.getConcli() + "',fotcli='" + cli.getFotcli() + "' where idcli='" + cli.getIdcli()+ "'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean delcli(int id) {
        String sql="delete from cliente where idcli="+id;
       try{
           con = cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.executeUpdate();
       }catch(Exception e){
           
       }
       return false;
    }
    
    
}
