/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DARVIN
 */
public class Cliente {
    int idcli;
    String nomcli;
    String apecli;
    String telcli;
    String usucli;
    String concli;

    public Cliente() {
    }

    public Cliente(int idcli, String nomcli, String apecli, String telcli, String usucli, String concli) {
        this.idcli = idcli;
        this.nomcli = nomcli;
        this.apecli = apecli;
        this.telcli = telcli;
        this.usucli = usucli;
        this.concli = concli;
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
    
    
}
