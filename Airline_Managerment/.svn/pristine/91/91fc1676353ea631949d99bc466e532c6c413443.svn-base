/**
 * 
 */
package airline.managerment.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import airline.managerment.model.Person;
import airline.managerment.utility.HibernateUtils;

/**
 * @author Lê
 *
 */
public class PersonDAOImpl implements PersonDAO {
    /**
     * khởi tạo session.
     */
    Session session = null;

    /**
     * khởi tạo transaction.
     */
    Transaction transaction = null;

    /*
     * (non-Javadoc)
     * 
     * @see
     * airline.managerment.dao.PersonDAO#addPerson(airline.managerment.model
     * .Person)
     */
    @Override
    public boolean addPerson(Person person) {
        // TODO Auto-generated method stub
        boolean check = true;
        session = HibernateUtils.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        try {
            session.save(person);
            transaction.commit();
        } catch (RuntimeException e) {
            check = false;
            System.err.println("ERROR " + e.toString());
        }

        return check;
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * airline.managerment.dao.PersonDAO#amendPerson(airline.managerment.model
     * .Person)
     */
    @Override
    public boolean amendPerson(Person p) {
        // TODO Auto-generated method stub
        return false;
    }

}
