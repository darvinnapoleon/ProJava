
package modelo;

import java.io.InputStream;

public class Producto {
    int idpro;
    String nompro;
    Double precom;
    Double preven;
    int stopro;
    int idcat;
    int idmar;
    int idpes;
    int idsab;
    InputStream fotcli;

    public Producto() {
    }

    public Producto(int idpro, String nompro, Double precom, Double preven, int stopro, int idcat, int idmar, int idpes, int idsab, InputStream fotcli) {
        this.idpro = idpro;
        this.nompro = nompro;
        this.precom = precom;
        this.preven = preven;
        this.stopro = stopro;
        this.idcat = idcat;
        this.idmar = idmar;
        this.idpes = idpes;
        this.idsab = idsab;
        this.fotcli = fotcli;
    }

    public int getIdpro() {
        return idpro;
    }

    public void setIdpro(int idpro) {
        this.idpro = idpro;
    }

    public String getNompro() {
        return nompro;
    }

    public void setNompro(String nompro) {
        this.nompro = nompro;
    }

    public Double getPrecom() {
        return precom;
    }

    public void setPrecom(Double precom) {
        this.precom = precom;
    }

    public Double getPreven() {
        return preven;
    }

    public void setPreven(Double preven) {
        this.preven = preven;
    }

    public int getStopro() {
        return stopro;
    }

    public void setStopro(int stopro) {
        this.stopro = stopro;
    }

    public int getIdcat() {
        return idcat;
    }

    public void setIdcat(int idcat) {
        this.idcat = idcat;
    }

    public int getIdmar() {
        return idmar;
    }

    public void setIdmar(int idmar) {
        this.idmar = idmar;
    }

    public int getIdpes() {
        return idpes;
    }

    public void setIdpes(int idpes) {
        this.idpes = idpes;
    }

    public int getIdsab() {
        return idsab;
    }

    public void setIdsab(int idsab) {
        this.idsab = idsab;
    }

    public InputStream getFotcli() {
        return fotcli;
    }

    public void setFotcli(InputStream fotcli) {
        this.fotcli = fotcli;
    }
    
}
