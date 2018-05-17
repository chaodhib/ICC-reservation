package com.chaouki.icc.reservations.dao;

import com.chaouki.icc.reservations.entities.Representation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface RepresentationDao extends JpaRepository<Representation, Integer> {
}
