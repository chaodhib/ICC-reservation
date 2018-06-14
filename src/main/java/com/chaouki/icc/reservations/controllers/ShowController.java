package com.chaouki.icc.reservations.controllers;

import com.chaouki.icc.reservations.entities.Show;
import com.chaouki.icc.reservations.services.ShowService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import java.util.List;

@ManagedBean
@ViewScoped
public class ShowController {

    @Autowired
    private ShowService showService;

    private List<Show> showList;

    @PostConstruct
    public void loadList(){
        showList = showService.findAll();
    }

    public List<Show> getShowList() {
        return showList;
    }
}
