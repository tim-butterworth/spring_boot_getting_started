package com.collectionManager.repositories;

import com.collectionManager.entities.Publisher;
import org.springframework.data.repository.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PublisherRepository extends Repository<Publisher, Long> {
    List<Publisher> findAll();
    Publisher save(Publisher publisher);
    Publisher findById(Long publisherId);
}
