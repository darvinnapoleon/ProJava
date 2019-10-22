
package modeloDAO;

import config.Conexion;
import interfaces.LISTCat;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import modelo.Categoria;

public class CategoriaDAO implements LISTCat {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Categoria ca = new Categoria();
    @Override
    public List listarcat() {
        ArrayList<Categoria> list = new ArrayList<>();
        String sql = "select * from categoria";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria cat = new Categoria();
                cat.setIdcat(rs.getInt("idcat"));
                cat.setNomcat(rs.getString("nomcat"));
                cat.setFotcat(rs.getBinaryStream("fotcat"));
                list.add(cat);
            }
        } catch (Exception e) {

        }
        return list;
    }
    public void listarImg(int id, HttpServletResponse response){
        String sql="select * from categoria where idcat="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try{
            outputStream=response.getOutputStream();
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                inputStream = rs.getBinaryStream("fotcat");
                
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
        }catch(Exception e){
            
        }
    
}
}
