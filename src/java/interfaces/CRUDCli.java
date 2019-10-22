
package interfaces;

import java.util.List;
import modelo.Cliente;

public interface CRUDCli {
    public int valcli(Cliente cli);
    public List listarcli();
    
    public Cliente liscli(int id);

    public boolean addcli(Cliente cli);

    public boolean edicli(Cliente cli);

    public boolean delcli(int id);
}
