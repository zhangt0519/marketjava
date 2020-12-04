package com.zt.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	@RequestMapping("/hello/test1")
    public String test1() {
    	System.out.println("test1");
        return "test1!";
    }
}
