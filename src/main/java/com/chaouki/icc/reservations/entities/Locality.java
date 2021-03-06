package com.chaouki.icc.reservations.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Table(name = "locality")
@Entity
public class Locality implements Serializable {

    @Id
    private Integer id;
    private String postalCode;

    @Column(name = "locality")
    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String locality) {
        this.name = locality;
    }
}
