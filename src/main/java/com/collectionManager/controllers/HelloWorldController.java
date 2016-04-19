package com.collectionManager.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HelloWorldController {

    @RequestMapping(path = "/helloWorld")
    public Map<String, String> helloWorld() {
        HashMap<String, String> stringStringHashMap = new HashMap<>();
        stringStringHashMap.put("message", "hello world!");
        return stringStringHashMap;
    }
}
