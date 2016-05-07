package com.collectionManager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Issue {
    @Id
    @GeneratedValue
    private Long id;
    private Integer issueNumber;
    private String title;

    public Integer getIssueNumber() {
        return issueNumber;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setIssueNumber(Integer issueNumber) {
        this.issueNumber = issueNumber;
    }
}
