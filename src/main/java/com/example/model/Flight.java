package com.example.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Flight {

    @Column(name = "flight_from")
    private String fromCity;

    @Column(name = "flight_dep_date")
    private String departureDate;

    @Column(name = "flight_dep_time")
    private String departureTime;

    @Column(name = "flight_to")
    private String toCity;

    @Column(name = "flight_dest_date")
    private String destinationDate;

    @Column(name = "flight_dest_time")
    private String destinationTime;

    public Flight() {
    }

    public String getFromCity() {
        return fromCity;
    }

    public void setFromCity(String fromCity) {
        this.fromCity = fromCity;
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }

    public String getToCity() {
        return toCity;
    }

    public void setToCity(String toCity) {
        this.toCity = toCity;
    }

    public String getDestinationDate() {
        return destinationDate;
    }

    public void setDestinationDate(String destinationDate) {
        this.destinationDate = destinationDate;
    }

    public String getDestinationTime() {
        return destinationTime;
    }

    public void setDestinationTime(String destinationTime) {
        this.destinationTime = destinationTime;
    }

    @Override
    public String toString() {
        return "Flight{" +
                "fromCity='" + fromCity + '\'' +
                ", departureDate='" + departureDate + '\'' +
                ", departureTime='" + departureTime + '\'' +
                ", toCity='" + toCity + '\'' +
                ", destinationDate='" + destinationDate + '\'' +
                ", destinationTime='" + destinationTime + '\'' +
                '}';
    }
}
