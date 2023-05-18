package com.kbstar.Item;

import com.kbstar.dto.Item;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class SelectTopCateTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        List<Item> item = null;

        try {
            item = service.getTopcate(100);

        } catch (Exception e) {

            log.info("......에러.........");
            e.printStackTrace();
        }

    }
}

