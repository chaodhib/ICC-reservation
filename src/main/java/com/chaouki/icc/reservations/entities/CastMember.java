package com.chaouki.icc.reservations.entities;

import javax.persistence.*;
import java.util.List;

@Table(name = "artiste_type")
@Entity
public class CastMember {

    @Id
    private Integer id;

    @ManyToOne
    private Artist artist;

    @ManyToOne
    private CastMemberType type;

    @ManyToMany
    private List<Show> shows;

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

    public List<Show> getShows() {
        return shows;
    }

    public void setShows(List<Show> shows) {
        this.shows = shows;
    }
}
