package airline.managerment.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import airline.managerment.model.Airplane;
import airline.managerment.utility.HibernateUtils;

public class AirplaneDAOImpl implements AirplaneDAO {
    Session session = null;
    Transaction trans = null;

    @Override
    public String getAirplaneNameById(int airplaneId) {
        // TODO Auto-generated method stub
        Session session = HibernateUtils.getSessionFactory().openSession();
        Transaction trans = session.beginTransaction();
        Query query = session
                .createQuery("from Airplane where airplaneId = :param");
        query.setParameter("param", airplaneId);
        List<Airplane> listAirplane = query.list();
        trans.commit();
        session.flush();
        if (listAirplane.size() > 0) {
            Airplane airplane = listAirplane.get(0);
            return airplane.getAirplaneName();
        } else {
            return null;
        }
    }

}
