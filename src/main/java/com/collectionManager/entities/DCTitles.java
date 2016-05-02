package com.collectionManager.entities;

import java.util.List;

public class DCTitles {
    private List<Title> titles;

    public DCTitles(List<Title> titles) {
        this.titles = titles;
    }

    public List<Title> getTitles() {
        return titles;
    }
}
