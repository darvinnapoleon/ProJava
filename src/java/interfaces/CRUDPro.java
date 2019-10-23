
package interfaces;

import java.util.List;
import modelo.Producto;

public interface CRUDPro {
    public List listarpro(int id);
    
    public Producto lispro(int id);

    public boolean addpro(Producto pro);

    public boolean edipro(Producto pro);

    public boolean delpro(int id);
}
