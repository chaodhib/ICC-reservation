package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Show;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShowDao extends JpaRepository<Show, Integer> {
}
