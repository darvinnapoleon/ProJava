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
public class Persona1 {
    int Id;
    String Nombres;
    String Correo;

    public Persona1() {
    }

    public Persona1(int Id, String Nombres, String Correo) {
        this.Id = Id;
        this.Nombres = Nombres;
        this.Correo = Correo;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }
    
}
