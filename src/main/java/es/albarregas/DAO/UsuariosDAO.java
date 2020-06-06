
package es.albarregas.DAO;

import es.albarregas.beans.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Framcisco_Antonio
 */

public class UsuariosDAO implements IUsuariosDAO {

    public ArrayList<Usuario> leerUsuarios() {
        ArrayList<Usuario> lista = new ArrayList();
        String consulta = "Select * from usuarios";

        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {
                Usuario Usuario = new Usuario();
                Usuario.setId(resultado.getByte("id"));
                Usuario.setNombre(resultado.getString("nombre"));
                Usuario.setApellidos(resultado.getString("apellidos"));
                Usuario.setFechaNacimiento(resultado.getDate("fecha"));
                Usuario.setAvatar(resultado.getString("avatar"));
                lista.addAll((Collection<? extends Usuario>) Usuario);
            }

            //resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentencia");
            ex.printStackTrace();
        }

        return lista;
    }


    public void insertarUsuario(Usuario Usuario) {
        String consulta = "insert into usuarios (nombre, apellidos, fechaNacimiento, avatar) values (?,?,?,?)";

        try {

            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);

            sentencia.setString(1, Usuario.getNombre());
            sentencia.setString(2, Usuario.getApellidos());
            sentencia.setDate(3, Usuario.getFechaNacimiento());
            sentencia.setString(4, Usuario.getAvatar());

            sentencia.executeUpdate();

           // sentencia.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }


    public void actualizarUsuario(Usuario Usuario) {
        String consulta = "uptade Usuarios set nombre=?, apellidos=?, fechaNacimiento=?, avatar=? where id=?";

        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);

            sentencia.setString(1, Usuario.getNombre());
            sentencia.setString(2, Usuario.getApellidos());
            sentencia.setDate(3, Usuario.getFechaNacimiento());
            sentencia.setString(4, Usuario.getAvatar());

            sentencia.executeUpdate();

          //  sentencia.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }


    public void eliminarUsuarios(Usuario Usuario) {
        String consulta = "delete from usuarios where id=?";

        try {
            PreparedStatement sentencia = ConnectionFactory.getConnection().prepareStatement(consulta);

            sentencia.setString(1, Usuario.getNombre());
            sentencia.setString(2, Usuario.getApellidos());
            sentencia.setDate(3, Usuario.getFechaNacimiento());
            sentencia.setString(4, Usuario.getAvatar());

            sentencia.executeUpdate();

           // sentencia.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public Usuario getUsuario(int id) {
        Usuario Usuario = new Usuario();
        String consulta = "Select * from usuarios where id=?;";

        try {
            Statement sentencia = ConnectionFactory.getConnection().createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);

            while (resultado.next()) {

                Usuario.setId(resultado.getByte("id"));
                Usuario.setNombre(resultado.getString("nombre"));
                Usuario.setApellidos(resultado.getString("apellidos"));
                Usuario.setFechaNacimiento(resultado.getDate("fecha"));
                Usuario.setAvatar(resultado.getString("avatar"));
            }

          //  resultado.close();

        } catch (SQLException ex) {
            System.out.println("Error al ejecutar la sentecnia");
            ex.printStackTrace();
        }

        return Usuario;
    }
    
}
