package com.aadarshproject.controller;   // 👈 use your actual package name

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String entryPage() {
        return "Entry"; // looks for /WEB-INF/jsp/Entry.jsp
    }
}
