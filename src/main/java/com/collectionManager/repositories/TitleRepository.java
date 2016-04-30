package com.collectionManager.repositories;

import com.collectionManager.entities.Title;
import org.springframework.data.repository.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TitleRepository extends Repository<Title, Long> {
    List<Title> findAll();
    Title save(Title publisher);
    Title findById(Long titleId);

}
