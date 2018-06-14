package com.chaouki.icc.reservations.controllers;

import com.chaouki.icc.reservations.entities.Representation;
import com.chaouki.icc.reservations.entities.Show;
import com.chaouki.icc.reservations.services.RepresentationService;
import com.chaouki.icc.reservations.services.ShowService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.annotation.ManagedProperty;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import java.util.List;
import java.util.Map;

@ManagedBean
@ViewScoped
public class ShowDetailController {

    @Autowired
    private RepresentationService representationService;

    private List<Representation> representations;

    @PostConstruct
    public void loadList() {
        if(FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().containsKey("showId")) {
            String showIdString = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("showId");
            representations = representationService.findByShow(Integer.valueOf(showIdString));
        }
    }

    public List<Representation> getRepresentations() {
        return representations;
    }
}
