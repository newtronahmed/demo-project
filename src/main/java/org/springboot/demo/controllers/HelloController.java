package org.springboot.demo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;

@RestController
public class HelloController {
    @GetMapping("/hello")
    public String hello() throws Exception {
        String podName = InetAddress.getLocalHost().getHostName();
        return "Hello from Pod: " + podName;
    }
}