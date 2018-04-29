package com.chaouki.icc.reservations.entities;


import javax.persistence.*;
import java.time.LocalDateTime;

@Table(name = "representations")
@Entity
public class Representation {
    @Id
    private Integer id;
    @ManyToOne
    private Show show;
    @ManyToOne
    private Location location;

    private LocalDateTime datetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public LocalDateTime getDatetime() {
        return datetime;
    }

    public void setDatetime(LocalDateTime datetime) {
        this.datetime = datetime;
    }
}
