package com.example.dao;

import com.example.model.Passenger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PassengerDAOImpl implements PassengerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Passenger> getPassenger() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Passenger> theQuery = currentSession.createQuery("from Passenger order by id", Passenger.class);
        List<Passenger> thePassengers = theQuery.getResultList();
        return thePassengers;
    }

    @Override
    public void savePassenger(Passenger thePassenger) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(thePassenger);
    }

    @Override
    public Passenger getPassenger(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Passenger thePassenger = currentSession.get(Passenger.class, theId);
        return thePassenger;
    }

    @Override
    public void deletePassenger(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query theQuery = currentSession.createQuery("delete from Passenger where id=:passengerId");
        theQuery.setParameter("passengerId", theId);
        theQuery.executeUpdate();
    }
}
