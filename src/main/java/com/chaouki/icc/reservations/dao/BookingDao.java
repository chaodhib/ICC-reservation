package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Booking;
import com.chaouki.icc.reservations.entities.Show;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingDao extends JpaRepository<Booking, Integer> {
}
