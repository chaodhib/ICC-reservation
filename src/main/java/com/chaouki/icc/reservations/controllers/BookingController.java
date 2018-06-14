package com.chaouki.icc.reservations.controllers;

import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.Show;
import com.chaouki.icc.reservations.services.BookingService;
import com.chaouki.icc.reservations.services.RepresentationService;
import com.chaouki.icc.reservations.services.ShowService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import java.util.Optional;

@ManagedBean
@ViewScoped
public class BookingController {

    @Autowired
    private RepresentationService representationService;

    @Autowired
    private BookingService bookingService;

    private Representation representation;

    private int numberOfSeats;
    private String creditCardNumber;

    @PostConstruct
    public void initiateBooking() {
        String representationIdString = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("representationId");
        Optional<Representation> representationOpt = representationService.findById(Integer.valueOf(representationIdString));
        if (!representationOpt.isPresent())
            throw new RuntimeException("representation does not exist");

        this.representation = representationOpt.get();
    }

    public void book() {
        bookingService.makeBooking(representation, null, numberOfSeats, creditCardNumber);

        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage("Successful",  "The booking has been made!") );
    }

    public Representation getRepresentation() {
        return representation;
    }

    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    public void setNumberOfSeats(int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    public String getCreditCardNumber() {
        return creditCardNumber;
    }

    public void setCreditCardNumber(String creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }
}
