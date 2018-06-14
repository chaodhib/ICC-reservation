package com.chaouki.icc.reservations.services;

import com.chaouki.icc.reservations.dao.ShowDao;
import com.chaouki.icc.reservations.entities.Show;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShowServiceImpl implements ShowService {

    @Autowired
    private ShowDao showDao;

    @Override
    public List<Show> findAll() {
        return showDao.findAll();
    }
}
