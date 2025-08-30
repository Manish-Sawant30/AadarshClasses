package com.example.aadarshproject.controller;

import com.example.aadarshproject.model.Student;
import com.example.aadarshproject.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    // ✅ Student Registration
    @PostMapping("/register")
    public String registerStudent(
            @RequestParam String name,
            @RequestParam String phone,
            @RequestParam String email,
            @RequestParam String password,
            Model model) {

        Student student = new Student();
        student.setName(name);
        student.setPhone(phone);
        student.setEmail(email);
        student.setPassword(password);

        studentService.registerStudent(student);

        // After successful registration → go to HomePage.jsp
        model.addAttribute("student", student);
        return "HomePage";
    }

    @PostMapping("/login")
    public String loginStudent(@RequestParam String phone,
                               @RequestParam String password,
                               Model model) {
        Student student = studentService.loginStudent(phone, password);

        if (student != null) {
            model.addAttribute("student", student);
            return "HomePage";   // ✅ success
        } else {
            model.addAttribute("error", "Invalid Phone or Password");
            return "EntryLogin"; // ✅ back to login page
        }
    }


    // ✅ Admin - Show All Students on Dashboard
//    @GetMapping("/admin/students")
//    public String showAllStudents(Model model) {
//        List<Student> students = studentService.getAllStudents();
//        model.addAttribute("students", students);
//        return "admindash"; // ✅ show list in admindash.jsp
//    }
}
