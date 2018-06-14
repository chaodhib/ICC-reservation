package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.User;

public interface BookingService {
    void makeBooking(Representation representation, User user, int ticketCount, String creditCardNumber);
}
