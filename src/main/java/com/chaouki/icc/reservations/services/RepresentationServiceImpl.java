package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.dao.RepresentationDao;
import com.chaouki.icc.reservations.entities.Representation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RepresentationServiceImpl implements RepresentationService {

    @Autowired
    private RepresentationDao representationDao;

    @Override
    public List<Representation> findAll() {
        return representationDao.findAll();
    }
}
