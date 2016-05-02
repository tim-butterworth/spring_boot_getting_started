package com.collectionManager.entities;

import java.util.List;

public class MarvelTitles {
    private List<Title> titles;

    public MarvelTitles(List<Title> titles) {
        this.titles = titles;
    }

    public List<Title> getTitles() {
        return titles;
    }
}
