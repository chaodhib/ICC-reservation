package com.chaouki.icc.reservations.entities;

import javax.persistence.*;
import java.util.List;

import static javax.persistence.CascadeType.MERGE;
import static javax.persistence.CascadeType.PERSIST;
import static javax.persistence.FetchType.EAGER;

@Table(name = "cast_member")
@Entity
public class CastMember {

    @Id
    private Integer id;

    @ManyToOne
    private Artist artist;

    @ManyToOne
    private CastMemberType type;

    @ManyToOne
    private Show show;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Artist getArtist() {
        return artist;
    }

    public void setArtist(Artist artist) {
        this.artist = artist;
    }

    public CastMemberType getType() {
        return type;
    }

    public void setType(CastMemberType type) {
        this.type = type;
    }

}
