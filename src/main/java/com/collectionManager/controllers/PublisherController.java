package com.collectionManager.controllers;

import com.collectionManager.entities.Publisher;
import com.collectionManager.entities.Publishers;
import com.collectionManager.services.PublisherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PublisherController {

    private final PublisherService publisherService;

    @Autowired
    public PublisherController(PublisherService publisherService) {
        this.publisherService = publisherService;
    }

    @RequestMapping(path = "/publishers", method = RequestMethod.GET)
    public ResponseEntity<Publishers> getPublishers(){
        return new ResponseEntity<>(publisherService.getListOfPublishers(), HttpStatus.OK);
    }

    @RequestMapping(path = "/publishers/{id}", method = RequestMethod.GET)
    public ResponseEntity<Publisher> findPublisher(@PathVariable("id") Long publisherId){
        return new ResponseEntity<>(publisherService.findPublisherById(publisherId), HttpStatus.OK);
    }

}
