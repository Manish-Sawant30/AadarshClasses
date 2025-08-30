package com.example.aadarshproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/entry")
    public String showEntryPage() {
        return "Entry";
    }

    @GetMapping("/login")
    public String showStudentLoginPage() {
        return "EntryLogin";
    }

    

    @GetMapping("/home")
    public String showHomePage() {
        return "HomePage";
    }

    @GetMapping("/registerForm")
    public String showRegisterPage() {
        return "register";
    }

    @GetMapping("/contact")
    public String showContactPage() {
        return "Contact";
    }

    @GetMapping("/gallery")
    public String showGalleryPage() {
        return "Gallery";  // ✅ fixed
    }

    @GetMapping("/about")
    public String showAboutPage() {
        return "about";  // ✅ fixed
    }

    @GetMapping("/about-institute")
    public String showAboutInstitutePage() {
        return "AboutInstitute";
    }

    @GetMapping("/activity")
    public String showActivityPage() {
        return "Activity";  // ✅ fixed
    }

    @GetMapping("/agreeAdmission")
    public String showAgreeAdmissionPage() {
        return "AgreeAdmission";
    }

    @GetMapping("/studentmain")
    public String studentLoginPage() {
        return "Studentlogin";
    }
    
  
    
}

