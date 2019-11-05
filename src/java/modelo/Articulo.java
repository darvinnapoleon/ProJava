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
public class Articulo {
    private int idpro;
    private int canpro;

    public Articulo() {
    }

    public Articulo(int idpro, int canpro) {
        this.idpro = idpro;
        this.canpro = canpro;
    }

    public int getIdpro() {
        return idpro;
    }

    public void setIdpro(int idpro) {
        this.idpro = idpro;
    }

    public int getCanpro() {
        return canpro;
    }

    public void setCanpro(int canpro) {
        this.canpro = canpro;
    }
    
    
}
