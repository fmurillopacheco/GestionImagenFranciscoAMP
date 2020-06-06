
package es.albarregas.beans;

import java.sql.Date;

/**
 *
 * @author Framcisco_Antonio
 */
public class Usuario {
    private Byte id;
    private String nombre;
    private String apellidos;
    private Date fechaNacimiento;
    private String avatar;
    private String avatarPart;

    public Byte getId() {
        return id;
    }

    public void setId(Byte id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getAvatarPart() {
        return avatarPart;
    }

    public void setAvatarPart(String avatarPart) {
        this.avatarPart = avatarPart;
    }
    
    
}
