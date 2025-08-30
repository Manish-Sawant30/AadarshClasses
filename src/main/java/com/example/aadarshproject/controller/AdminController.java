package com.example.aadarshproject.controller;

import com.example.aadarshproject.model.Admission;
import com.example.aadarshproject.model.Student;
import com.example.aadarshproject.service.AdminService;
import com.example.aadarshproject.service.AdmissionService;
import com.example.aadarshproject.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired private AdminService adminService;
    @Autowired private AdmissionService admissionService;
    @Autowired private StudentService studentService;

    @GetMapping("/login")
    public String showLoginPage() {
        return "AdminLogin";  // /WEB-INF/jsp/AdminLogin.jsp
    }

    @GetMapping("/adminfinal")
    public String adminFinal() {
        return "Adminfinal"; 
    }

    @GetMapping("/dashboard")
    public String showDashboard(Model model) {
        model.addAttribute("studentCount", adminService.getStudentCount());
        model.addAttribute("teacherCount", adminService.getTeacherCount());
        model.addAttribute("courseCount", adminService.getCourseCount());
        return "Adminfinal";  
    }

    @GetMapping("/students")
    public String showStudents(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "admindash";  
    }

    @GetMapping("/student/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        studentService.deleteStudent(id);
        return "redirect:/admin/students";
    }

    @GetMapping("/admissions")
    public String showAdmissions(@RequestParam(required = false, defaultValue = "All") String std,
                                 Model model) {
        List<Admission> admissions = "All".equalsIgnoreCase(std)
                ? admissionService.getAllAdmissions()
                : admissionService.findByStd(std);
        model.addAttribute("admissions", admissions);
        model.addAttribute("selectedStd", std);
        return "adminpanel";  
    }

    @GetMapping("/admission/edit/{id}")
    public String editAdmission(@PathVariable Long id, Model model) {
        Admission admission = admissionService.getAdmissionById(id);
        if (admission == null) {
            return "redirect:/admin/admissions";
        }
        model.addAttribute("admission", admission);
        return "editAdmission";
    }

    @PostMapping("/admission/update/{id}")
    public String updateAdmission(@PathVariable Long id,
                                  @ModelAttribute("admission") Admission admission) {
        admission.setId(id);
        admissionService.saveAdmission(admission);
        return "redirect:/admin/admissions";
    }

    @GetMapping("/admission/delete/{id}")
    public String deleteAdmission(@PathVariable Long id,
                                  @RequestParam(required = false) String std) {
        admissionService.deleteAdmission(id);
        return (std != null && !"All".equalsIgnoreCase(std))
                ? "redirect:/admin/admissions?std=" + std
                : "redirect:/admin/admissions";
    }
}
