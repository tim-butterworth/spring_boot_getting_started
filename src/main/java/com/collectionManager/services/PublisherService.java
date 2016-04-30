package com.collectionManager.services;

import com.collectionManager.entities.Publisher;
import com.collectionManager.entities.Publishers;
import com.collectionManager.repositories.PublisherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublisherService {

    private PublisherRepository publisherRepository;

    @Autowired
    public PublisherService(PublisherRepository publisherRepository) {
        this.publisherRepository = publisherRepository;
    }

    public Publishers getListOfPublishers() {
        List<Publisher> publisherList = publisherRepository.findAll();

        Publishers publishers = new Publishers();
        publishers.setPublishers(publisherList);

        return publishers;
    }

    public Publisher findPublisherById(Long publisherId) {
        return publisherRepository.findById(publisherId);
    }
}
