
package es.albarregas.DAOFACTORY;

import es.albarregas.DAO.IUsuariosDAO;
import es.albarregas.DAO.UsuariosDAO;

/**
 *
 * @author Framcisco_Antonio
 */
public class MySQLDAOFactory extends DAOFactory{
@Override
    public IUsuariosDAO getUsuariosDAO() {
        return new UsuariosDAO();
    }

}
