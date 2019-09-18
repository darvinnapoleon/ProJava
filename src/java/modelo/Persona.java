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
public class Persona {
    private String nom;
    private int eda;

    public Persona(String nom, int eda) {
        this.nom = nom;
        this.eda = eda;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getEda() {
        return eda;
    }

    public void setEda(int eda) {
        this.eda = eda;
    }
}
