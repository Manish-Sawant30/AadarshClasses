package com.example.aadarshproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")   // root URL
    public String home() {
        return "Entry";  // /WEB-INF/jsp/Entry.jsp
    }
}
