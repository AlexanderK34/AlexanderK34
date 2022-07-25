package com.example.controller;

import com.example.model.Passenger;
import com.example.exception.PassengerNotFoundException;
import com.example.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class PassengerRestController {

    @Autowired
    private PassengerService passengerService;

    @GetMapping("/passengers")
    public List<Passenger> apiPassengers() {
        return passengerService.getPassengers();
    }

    @GetMapping("/passengers/{passengersId}")
    public Passenger apiPassengerById(@PathVariable int passengersId) {
        Passenger thePassenger = passengerService.getPassenger(passengersId);
        checkNotFoundException(passengersId, thePassenger);
        return thePassenger;
    }

    @GetMapping("/passengers/find/{family}")
    public Passenger apiPassengerByFamily(@PathVariable String family) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        for (Passenger tempPassenger : thePassengers) {
            if (tempPassenger.getFamily().equalsIgnoreCase(family)) {
                return tempPassenger;
            }
        }
        return new Passenger();
    }

    @GetMapping("/passengers/city/{city}")
    public List<Passenger> apiListByCityDestination(@PathVariable String city) {
        return new PassengerController().getListByDestinationCity(city, passengerService);
    }

    @GetMapping("/passengers/sorted/family")
    public List<Passenger> apiListSortedByFamily() {
        return new PassengerController().getListSortedByFamily(passengerService);
    }

    @GetMapping("/passengers/departuredate/{departuredate}")
    public List<Passenger> apiListByDepartureDate(@PathVariable String departuredate) {
        return new PassengerController().getListByDepartureDate(departuredate, passengerService);
    }

    @GetMapping("/passengers/find/date/{date}/city/{city}")
    public List<Passenger> apiListByDateAndCity(@PathVariable String date, @PathVariable String city) {
        return new PassengerController().getListByDateAndCity(date, city, passengerService);
    }

    @PostMapping("/passengers")
    public Passenger apiAddPassenger(@RequestBody Passenger thePassenger) {
        thePassenger.setId(0);
        passengerService.savePassenger(thePassenger);
        return thePassenger;
    }

    @PutMapping("/passengers")
    public Passenger apiUpdatePassenger(@RequestBody Passenger thePassenger) {
        passengerService.savePassenger(thePassenger);
        return thePassenger;
    }

    @DeleteMapping("/passengers/{passengersId}")
    public String apiDeletePassenger(@PathVariable int passengersId) {
        Passenger tempPassenger = passengerService.getPassenger(passengersId);
        checkNotFoundException(passengersId, tempPassenger);
        passengerService.deletePassenger(passengersId);
        return "Deleted passenger id " + passengersId;
    }

    private void checkNotFoundException(@PathVariable int passengersId, Passenger tempPassenger) {
        if (tempPassenger == null) {
            throw new PassengerNotFoundException("Passenger with id " + passengersId + " not found");
        }
    }
}