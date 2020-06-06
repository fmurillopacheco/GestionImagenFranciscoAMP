
package es.albarregas.controllers;

import es.albarregas.DAO.IUsuariosDAO;
import es.albarregas.DAOFACTORY.DAOFactory;
import es.albarregas.beans.Usuario;
import java.io.IOException;
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
@WebServlet(name = "Operacion", urlPatterns = {"/operacion"})
public class Operacion extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String url = "";

        if (request.getParameter("operacion") != null) {
            switch (request.getParameter("operacion")) {
                case "insertUsuario":
                    url = "JSP/insertar/insertar.jsp";
                    break;
                case "actualizarUsuario":
                    DAOFactory daof = DAOFactory.getDAOFactory(1);
                    IUsuariosDAO odao = daof.getUsuariosDAO();
                    ArrayList<Usuario> usaurios = odao.leerUsuarios();

            request.setAttribute("usaurios", usaurios);
                    url = "JSP/leerActualizar.jsp";
                    break;
                case "eliminarUsuarios":
                    url = "JSP/eliminar/leerEliminar.jsp";
                    break;
                case "visualizarUsuarios":
                    obtenerDatos(request, response);
                    url = "JSP/visualizar/visualizarUsuarios.jsp";
                    break;
                }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }

    public void obtenerDatos(HttpServletRequest request, HttpServletResponse response) {
        HttpSession sesion = request.getSession();
        if (request.getParameter("operacion").equals("visualizarUsuarios")) {

            DAOFactory daof = DAOFactory.getDAOFactory(1);
            IUsuariosDAO odao = daof.getUsuariosDAO();
            ArrayList<Usuario> usuarios = odao.leerUsuarios();

            sesion.setAttribute("usuarios", usuarios);
            
        } 
    }

}
