package modelo;

import java.io.InputStream;

public class Cliente {
    int idcli;
    String nomcli;
    String apecli;
    String telcli;
    String usucli;
    String concli;
    InputStream fotcli;  

    public Cliente() {
    }

    public Cliente(int idcli, String nomcli, String apecli, String telcli, String usucli, String concli, InputStream fotcli) {
        this.idcli = idcli;
        this.nomcli = nomcli;
        this.apecli = apecli;
        this.telcli = telcli;
        this.usucli = usucli;
        this.concli = concli;
        this.fotcli = fotcli;
    }

    public int getIdcli() {
        return idcli;
    }

    public void setIdcli(int idcli) {
        this.idcli = idcli;
    }

    public String getNomcli() {
        return nomcli;
    }

    public void setNomcli(String nomcli) {
        this.nomcli = nomcli;
    }

    public String getApecli() {
        return apecli;
    }

    public void setApecli(String apecli) {
        this.apecli = apecli;
    }

    public String getTelcli() {
        return telcli;
    }

    public void setTelcli(String telcli) {
        this.telcli = telcli;
    }

    public String getUsucli() {
        return usucli;
    }

    public void setUsucli(String usucli) {
        this.usucli = usucli;
    }

    public String getConcli() {
        return concli;
    }

    public void setConcli(String concli) {
        this.concli = concli;
    }

    public InputStream getFotcli() {
        return fotcli;
    }

    public void setFotcli(InputStream fotcli) {
        this.fotcli = fotcli;
    }
    
}
