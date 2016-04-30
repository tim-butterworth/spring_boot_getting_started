package com.collectionManager.controllers;

import com.collectionManager.entities.Title;
import com.collectionManager.entities.Titles;
import com.collectionManager.services.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TitleController {

    private final TitleService titleService;

    @Autowired
    public TitleController(TitleService titleService) {
        this.titleService = titleService;
    }

    @RequestMapping(path = "/titles", method = RequestMethod.GET)
    public ResponseEntity<Titles> getTitles(){
        return new ResponseEntity<>(titleService.getListOfTitles(), HttpStatus.OK);
    }

    @RequestMapping(path = "/titles/{id}", method = RequestMethod.GET)
    public ResponseEntity<Title> findTitle(@PathVariable("id") Long titleId){
        return new ResponseEntity<>(titleService.findTitleById(titleId), HttpStatus.OK);
    }

}
