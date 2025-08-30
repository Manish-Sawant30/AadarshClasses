package com.example.aadarshproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    // When user visits http://localhost:8080/ (or your deployed site root)
    @GetMapping("/")
    public String showEntryPage() {
        // This should match your JSP file name under /WEB-INF/jsp/
        return "Entry";   // /WEB-INF/jsp/Entry.jsp
    }
}
