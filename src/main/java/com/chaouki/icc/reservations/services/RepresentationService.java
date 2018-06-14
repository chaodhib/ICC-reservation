package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.entities.Representation;

import java.util.List;
import java.util.Optional;

public interface RepresentationService {

    List<Representation> findAll();

    List<Representation> findByShow(Integer showId);

    Optional<Representation> findById(Integer integer);
}
