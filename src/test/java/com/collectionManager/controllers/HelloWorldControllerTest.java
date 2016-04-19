package com.collectionManager.controllers;

import com.collectionManager.CollectionApplication;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.Map;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = CollectionApplication.class)
@WebAppConfiguration
public class HelloWorldControllerTest {

    private MockMvc mockMvc;

    @Before
    public void setUp() throws Exception {
        HelloWorldController helloWorldController = new HelloWorldController();
        mockMvc = MockMvcBuilders.standaloneSetup(helloWorldController).build();
    }

    @Test
    public void returnsHelloWorldNicelyFormattedJson() throws Exception {
        MvcResult mvcResult = mockMvc.perform(get("/helloWorld")).andReturn();

        ObjectMapper objectMapper = new ObjectMapper();

        Map map = objectMapper.readValue(mvcResult.getResponse().getContentAsString(), Map.class);

        assertThat(map.get("message"), is("hello world!"));
    }
}