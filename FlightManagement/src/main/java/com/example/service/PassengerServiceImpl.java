package com.example.service;

import com.example.dao.PassengerDAO;
import com.example.model.Passenger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PassengerServiceImpl implements PassengerService {

    @Autowired
    private PassengerDAO passengerDAO;

    @Override
    @Transactional
    public List<Passenger> getPassengers() {
        return passengerDAO.getPassenger();
    }

    @Override
    @Transactional
    public void savePassenger(Passenger thePassenger) {
        passengerDAO.savePassenger(thePassenger);
    }

    @Override
    @Transactional
    public Passenger getPassenger(int theId) {
        return passengerDAO.getPassenger(theId);
    }

    @Override
    @Transactional
    public void deletePassenger(int theId) {
        passengerDAO.deletePassenger(theId);
    }
}