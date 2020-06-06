/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.DAOFACTORY;

import es.albarregas.DAO.IUsuariosDAO;

/**
 *
 * @author Framcisco_Antonio
 */
public abstract class DAOFactory {
        public static final int MYSQL = 1;

    public abstract IUsuariosDAO getUsuariosDAO();

    public static DAOFactory getDAOFactory(int tipo) {
        DAOFactory daof = null;

        switch (tipo) {
            case MYSQL:
                daof = new MySQLDAOFactory();
                break;
        }
        return daof;
    }
}
