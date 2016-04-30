package com.collectionManager.entities;

import java.util.List;

public class Titles {
    private List<Title> titles;

    public Titles(List<Title> titles) {
        this.titles = titles;
    }

    public List<Title> getTitles() {
        return titles;
    }
}
