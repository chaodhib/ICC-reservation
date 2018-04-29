package com.chaouki.icc.reservations.entities;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "types")
@Entity
public class CastMemberType {

    @Id
    private Integer id;
    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
