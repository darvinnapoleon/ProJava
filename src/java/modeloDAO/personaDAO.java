
package modeloDAO;
import interfaces.CRUD;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import modelo.Conexion;
import modelo.Persona;


public class personaDAO implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p =new Persona();
    @Override
    public List listar() {
       ArrayList<Persona>list=new ArrayList<>();
       String sql="select * from persona";
       try{
           con=cn.getConnection();
           ps=con.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
           Persona per = new Persona();
           per.setId(rs.getInt("Id"));
           per.setDni(rs.getString("DNI"));
           per.setNom(rs.getString("Nombres"));
           }
       }catch(Exception e){
       
       }
       return list;
    }

    @Override
    public Persona list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
