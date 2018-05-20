package com.chaouki.icc.reservations.controllers;

import com.chaouki.icc.reservations.entities.Location;
import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.Show;
import com.chaouki.icc.reservations.services.RepresentationService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import java.time.LocalDateTime;
import java.util.List;

@ManagedBean
@ViewScoped
public class RepresentationController {

    @Autowired
    private RepresentationService representationService;

    private List<Representation> representations;

    private LocalDateTime dateTime;
    private Show show;
    private Location location;

    @PostConstruct
    public void loadList(){
        representations = representationService.findAll();
    }

    public void create() {
        Representation representation = new Representation();
        representation.setWhen(dateTime);
    }

    public List<Representation> getRepresentations() {
        return representations;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    public Show getShow() {
        return show;
    }

    public void setShow(Show show) {
        this.show = show;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
}
