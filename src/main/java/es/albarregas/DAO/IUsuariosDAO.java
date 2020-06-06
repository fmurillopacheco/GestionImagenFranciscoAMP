/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.DAO;

import es.albarregas.beans.Usuario;
import java.util.ArrayList;

/**
 *
 * @author Framcisco_Antonio
 */
public interface IUsuariosDAO {
    public ArrayList<Usuario> leerUsuarios();//Usuarios
    public void insertarUsuario(Usuario usuario);
    public void actualizarUsuario(Usuario usuario);
    public void eliminarUsuarios(Usuario usuario);
    public Usuario getUsuario(byte id);
    public void closeConnection();
}
