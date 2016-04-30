package com.collectionManager.services;

import com.collectionManager.entities.Title;
import com.collectionManager.entities.Titles;
import com.collectionManager.repositories.TitleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TitleService {
    private TitleRepository titleRepository;

    @Autowired
    public TitleService(TitleRepository titleRepository) {
        this.titleRepository = titleRepository;
    }

    public Titles getListOfTitles() {
        return new Titles(titleRepository.findAll());
    }

    public Title findTitleById(Long titleId) {
        return null;
    }
}
