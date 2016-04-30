package com.collectionManager.entities;

import javax.persistence.*;
import java.util.List;

@Entity
public class Volume {
    @Id
    @GeneratedValue
    private Long id;
    private String name;

    @OneToMany(fetch = FetchType.EAGER)
    private List<Issue> issues;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Issue> getIssues() {
        return issues;
    }

    public void setIssues(List<Issue> issues) {
        this.issues = issues;
    }

    public Long getId() {
        return id;
    }
}
