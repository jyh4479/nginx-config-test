package com.example.nginxapiserver.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SendSimpleActionController {

    @GetMapping("/action")
    String sendHelloController() {
        return "Hello Nginx!";
    }
}
