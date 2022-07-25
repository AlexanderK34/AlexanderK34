package com.example.controller;

import com.example.exception.PassengerNotFoundException;
import com.example.model.Passenger;
import com.example.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/passenger")
public class PassengerController {

    @Autowired
    private PassengerService passengerService;

    @GetMapping("/main")
    public String mainPage() {
        return "main";
    }

    @GetMapping("/list")
    public String passengers(Model theModel) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        theModel.addAttribute("passengers", thePassengers);
        return "passengers-list";
    }

    @GetMapping("/listSortedByFamily")
    public String passengersSortedByFamily(Model theModel) {
        theModel.addAttribute("passengers", getListSortedByFamily(passengerService));
        return "passengers-list";
    }

    public List<Passenger> getListSortedByFamily(PassengerService passengerService) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        Comparator<Passenger> compareByFamily = Comparator.comparing(Passenger::getFamily);
        thePassengers.sort(compareByFamily);
        return thePassengers;
    }

    @GetMapping("/findByFamily")
    public String passengerByFamily(@RequestParam("family") String family, Model theModel) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        theModel.addAttribute("passenger", new Passenger());
        for (Passenger tempPassenger : thePassengers) {
            if (tempPassenger.getFamily().equalsIgnoreCase(family)) {
                theModel.addAttribute("passenger", tempPassenger);
                break;
            }
        }
        return "passenger-one";
    }

    @GetMapping("/destinationCity")
    public String passengersByDestinationCity(@RequestParam("city") String city, Model theModel) {
        theModel.addAttribute("passengers", getListByDestinationCity(city, passengerService));
        return "passengers-list";
    }

    public List<Passenger> getListByDestinationCity(String city, PassengerService passengerService) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        for (int i = thePassengers.size() - 1; i >= 0; i--) {
            Passenger tempPassenger = thePassengers.get(i);
            if (!isaCity(city, tempPassenger)) {
                thePassengers.remove(i);
            }
        }
        return thePassengers;
    }

    @GetMapping("/departureDate")
    public String passengersByDepartureDate(@RequestParam("date") String date, Model theModel) {
        List<Passenger> thePassengers = getListByDepartureDate(date, passengerService);
        theModel.addAttribute("passengers", thePassengers);
        return "passengers-list";
    }

    public List<Passenger> getListByDepartureDate(String date, PassengerService passengerService) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        for (int i = thePassengers.size() - 1; i >= 0; i--) {
            Passenger tempPassenger = thePassengers.get(i);
            if (!isaDate(date, tempPassenger)) {
                thePassengers.remove(i);
            }
        }
        return thePassengers;
    }

    @GetMapping("/departureDateAndCity")
    public String passengersByDateAndCity(@RequestParam("date") String date,
                                          @RequestParam("city") String city,
                                          Model theModel) {
        theModel.addAttribute("passengers", getListByDateAndCity(date, city, passengerService));
        return "passengers-list";
    }

    public List<Passenger> getListByDateAndCity(String date, String city, PassengerService passengerService) {
        List<Passenger> thePassengers = passengerService.getPassengers();
        for (int i = thePassengers.size() - 1; i >= 0; i--) {
            Passenger tempPassenger = thePassengers.get(i);
            if (!isaDate(date, tempPassenger) || !isaCity(city, tempPassenger)) {
                thePassengers.remove(i);
            }
        }
        return thePassengers;
    }

    @GetMapping("/add")
    public String addNewPassenger(Model theModel) {
        theModel.addAttribute("passenger", new Passenger());
        return "passenger-add-update";
    }

    @PostMapping("/save")
    public String savePassenger(@ModelAttribute("passenger") Passenger thePassenger) {
        passengerService.savePassenger(thePassenger);
        return "redirect:/passenger/list";
    }

    @GetMapping("/update")
    public String updatePassenger(@RequestParam("passengersId") int theId, Model theModel) {
        Passenger tempPassenger = passengerService.getPassenger(theId);
        theModel.addAttribute("passenger", tempPassenger);
        checkNotFoundException(theId, tempPassenger);
        return "passenger-add-update";
    }

    @GetMapping("/showOne")
    public String showPassenger(@RequestParam("passengersId") int theId, Model theModel) {
        Passenger tempPassenger = passengerService.getPassenger(theId);
        theModel.addAttribute("passenger", tempPassenger);
        checkNotFoundException(theId, tempPassenger);
        return "passenger-one";
    }

    @GetMapping("/delete")
    public String deletePassenger(@RequestParam("passengersId") int theId) {
        passengerService.deletePassenger(theId);
        return "redirect:/passenger/list";
    }

    private void checkNotFoundException(@RequestParam("passengersId") int theId, Passenger tempPassenger) {
        if (tempPassenger == null) {
            throw new PassengerNotFoundException("Passenger with id " + theId + " not found");
        }
    }

    private boolean isaDate(String date, Passenger tempPassenger) {
        return tempPassenger.getFlight().getDepartureDate().equalsIgnoreCase(date);
    }

    private boolean isaCity(String city, Passenger tempPassenger) {
        return tempPassenger.getFlight().getToCity().equalsIgnoreCase(city);
    }
}