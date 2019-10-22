
package modelo;

import java.io.InputStream;

public class Categoria {
    int idcat;
    String nomcat;
    InputStream fotcat;

    public Categoria() {
    }

    public Categoria(int idcat, String nomcat, InputStream fotcat) {
        this.idcat = idcat;
        this.nomcat = nomcat;
        this.fotcat = fotcat;
    }

    public int getIdcat() {
        return idcat;
    }

    public void setIdcat(int idcat) {
        this.idcat = idcat;
    }

    public String getNomcat() {
        return nomcat;
    }

    public void setNomcat(String nomcat) {
        this.nomcat = nomcat;
    }

    public InputStream getFotcat() {
        return fotcat;
    }

    public void setFotcat(InputStream fotcat) {
        this.fotcat = fotcat;
    }
    
}
