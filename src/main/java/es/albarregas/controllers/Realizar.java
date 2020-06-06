
package es.albarregas.controllers;

import es.albarregas.DAO.IUsuariosDAO;
import es.albarregas.DAOFACTORY.DAOFactory;
import es.albarregas.beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Framcisco_Antonio
 */
@WebServlet(name = "Realizar", urlPatterns = {"/realizar"})
public class Realizar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
String url = "";
        if (request.getParameter("operacion") != null) {
            switch (request.getParameter("operacion")) {
                case "insertarUsuario":
                    insertarUsuario(request, response);
                    url = "";
                    break;
            }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }

    public void insertarUsuario(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        Usuario usu = new Usuario();
        usu.setNombre(request.getParameter("nombre"));
        usu.setApellidos(request.getParameter("apellidos"));
        //usu.setFechaNacimiento(request.getParameter("fecha"));
        usu.setAvatar(request.getParameter("avatar"));

        DAOFactory daof = DAOFactory.getDAOFactory(1);
        IUsuariosDAO idao = daof.getUsuariosDAO();

        idao.insertarUsuario(usu);

        ArrayList<Usuario> usuarios = (ArrayList<Usuario>) sesion.getAttribute("nombre");
        usuarios.add(usu);
        sesion.setAttribute("usuario", usuarios);
        
    }
    
    public void modificarUsuario(HttpServletRequest request, HttpServletResponse response){
        Usuario usu = new Usuario();
        usu.setNombre(request.getParameter("nombre"));
        usu.setApellidos(request.getParameter("apellidos"));
        //usu.setFechaNacimiento(request.getParameter("fecha"));
        usu.setAvatar(request.getParameter("avatar"));
        
        DAOFactory daof = DAOFactory.getDAOFactory(1);
        IUsuariosDAO idao = daof.getUsuariosDAO();
        
        idao.actualizarUsuario(usu);
    }

}
