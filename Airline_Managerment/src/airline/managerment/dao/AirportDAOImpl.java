package airline.managerment.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import airline.managerment.model.Airport;
import airline.managerment.model.Ticket;
import airline.managerment.utility.HibernateUtils;

/**
 * @author Lê
 *
 */
public class AirportDAOImpl implements AirportDAO {
    Session session = null;
    Transaction trans = null;

    @SuppressWarnings("unchecked")
    @Override
    public String getAirportPositionById(String str) {
        // TODO Auto-generated method stub
        Session session = HibernateUtils.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        Query query = session
                .createQuery("from Airport where airportId = :airportId");
        query.setParameter("airportId", str);
        List<Airport> listAirport = query.list();
        trans.commit();
        session.flush();
        if (listAirport.size() > 0) {
            Airport airport = listAirport.get(0);
            return airport.getAirportPosition();
        } else {
            return null;
        }
    }
    @Override
    public String getAirportNameById(String str) {
        // TODO Auto-generated method stub
        Session session = HibernateUtils.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        Query query = session
                .createQuery("from Airport where airportId = :airportId");
        query.setParameter("airportId", str);
        List<Airport> listAirport = query.list();
        trans.commit();
        session.flush();
        if (listAirport.size() > 0) {
            Airport airport = listAirport.get(0);
            return airport.getAirportName();
        } else {
            return null;
        }
    }

}
