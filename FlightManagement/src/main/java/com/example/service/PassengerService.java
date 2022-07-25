package com.example.service;

import com.example.model.Passenger;

import java.util.List;

public interface PassengerService {
	public List<Passenger> getPassengers();
	public void savePassenger(Passenger thePassenger);
	public Passenger getPassenger(int theId);
	public void deletePassenger(int theId);
}