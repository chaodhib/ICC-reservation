package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.Show;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface RepresentationDao extends JpaRepository<Representation, Integer> {
    List<Representation> findByShow(Show showId);
}
