package com.example.dao;

import com.example.model.Passenger;

import java.util.List;

public interface PassengerDAO {
	public List<Passenger> getPassenger();
	public void savePassenger(Passenger thePassenger);
	public Passenger getPassenger(int theId);
	public void deletePassenger(int theId);
}
