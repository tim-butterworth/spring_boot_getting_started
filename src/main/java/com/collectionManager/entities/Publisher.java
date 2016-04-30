package com.collectionManager.entities;

import javax.persistence.*;
import java.util.List;

@Entity
public class Publisher {
    @Id
    @GeneratedValue
    private Long id;
    private String name;

    @OneToMany(fetch = FetchType.EAGER)
    private List<Title> title;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Title> getTitle() {
        return title;
    }

    public void setTitle(List<Title> title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }
}
