package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.dao.RepresentationDao;
import com.chaouki.icc.reservations.dao.ShowDao;
import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.Show;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RepresentationServiceImpl implements RepresentationService {

    @Autowired
    private RepresentationDao representationDao;

    @Autowired
    private ShowDao showDao;

    @Override
    public List<Representation> findAll() {
        return representationDao.findAll();
    }

    @Override
    public List<Representation> findByShow(Integer showId) {
        Optional<Show> showOptional = showDao.findById(showId);
        if(!showOptional.isPresent())
            throw new RuntimeException("show doesn't exist");

        return representationDao.findByShow(showOptional.get());
    }

    @Override
    public Optional<Representation> findById(Integer id) {
        return representationDao.findById(id);
    }
}
