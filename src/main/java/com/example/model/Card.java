package com.example.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Card {

    @Column(name = "card_type")
    private String type;

    @Column(name = "card_number")
    private String number;

    public Card() {
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Card{" +
                "type='" + type + '\'' +
                ", number='" + number + '\'' +
                '}';
    }
}
