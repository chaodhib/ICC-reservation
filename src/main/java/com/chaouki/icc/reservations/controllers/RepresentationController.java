package com.chaouki.icc.reservations.controllers;

import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.services.RepresentationService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import java.util.List;

@ManagedBean
@ViewScoped
public class RepresentationController {

    @Autowired
    private RepresentationService representationService;

    private List<Representation> representations;

    public void loadList(){
        representations = representationService.findAll();
    }

    public List<Representation> getRepresentations() {
        return representations;
    }
}
