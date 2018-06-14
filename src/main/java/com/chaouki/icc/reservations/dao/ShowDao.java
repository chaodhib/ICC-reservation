package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Show;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ShowDao extends JpaRepository<Show, Integer> {

    @Modifying
    @Query("UPDATE Show " +
            "SET bookable = CASE bookable WHEN TRUE THEN FALSE ELSE TRUE END " +
            "WHERE id = :showId")
    void toggleAvailability(@Param("showId") Integer showId);
}
