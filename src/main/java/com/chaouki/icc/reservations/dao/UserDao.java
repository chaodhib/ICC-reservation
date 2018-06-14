package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Booking;
import com.chaouki.icc.reservations.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

public interface UserDao extends JpaRepository<User, Integer> {

    User findByLogin(String login);
}
