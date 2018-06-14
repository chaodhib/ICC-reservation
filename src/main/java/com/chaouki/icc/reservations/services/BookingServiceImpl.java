package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.dao.BookingDao;
import com.chaouki.icc.reservations.dao.UserDao;
import com.chaouki.icc.reservations.entities.Booking;
import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Optional;

@Service
public class BookingServiceImpl implements BookingService {

    @Autowired
    private RepresentationService representationService;

    @Autowired
    private BookingDao bookingDao;

    @Autowired
    private UserDao userDao;

    @Override
    public void makeBooking(Representation representation, User user, int ticketCount, String creditCardNumber) {
        if(representation == null)
            throw new IllegalArgumentException("representation cannot be null");

        if(creditCardNumber == null)
            throw new IllegalArgumentException("creditCardNumber cannot be null");

        if(ticketCount == 0  || ticketCount > 20)
            throw new IllegalArgumentException("ticketCount must be between 1 and 20");

        Optional<Representation> representationSaved = representationService.findById(representation.getId());

        if(!representationSaved.isPresent())
            throw new IllegalArgumentException("representation " + representation.getId() + "does not exist");

        makePayement(ticketCount, representation.getShow().getPrice(), creditCardNumber);
        Booking booking = createBookingInstance(ticketCount, representationSaved.get());

        bookingDao.save(booking);
    }

    private void makePayement(int ticketCount, BigDecimal price, String creditCardNumber) {
        
    }

    private Booking createBookingInstance(int ticketCount, Representation representationSaved) {
        Booking booking = new Booking();
        booking.setPlaces(ticketCount);
        booking.setRepresentation(representationSaved);
        booking.setUser(userDao.findById(1).get()); // todo: temporary until authotification is implemented
        return booking;
    }

}
