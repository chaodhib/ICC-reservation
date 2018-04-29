package com.chaouki.icc.reservations.entities;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "artists")
@Entity
public class Artist {

    @Id
    private Integer id;
    private String firstname;
    private String lastname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
}
