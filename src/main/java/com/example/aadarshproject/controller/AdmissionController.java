package com.example.aadarshproject.controller;

import com.example.aadarshproject.model.Admission;
import com.example.aadarshproject.service.AdmissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/admission")
public class AdmissionController {

    @Autowired
    private AdmissionService admissionService;

    @GetMapping("/agree")
    public String agreePage() {
        return "AgreeAdmission";
    }

    @GetMapping("/form")
    public String admissionForm() {
        return "register"; // register.jsp
    }

    @PostMapping("/save")
    public String saveAdmission(@RequestParam String std,
                                @RequestParam Double fees,
                                @RequestParam String studentName,
                                @RequestParam String contact,
                                @RequestParam(required = false) String dob,
                                @RequestParam(required = false) String gender,
                                @RequestParam(required = false) String fatherName,
                                @RequestParam(required = false) String motherName,
                                @RequestParam(required = false) String address) {

        Admission admission = new Admission();
        admission.setStd(std);
        admission.setFees(fees);
        admission.setStudentName(studentName);
        admission.setContact(contact);

        try {
            if (dob != null && !dob.isEmpty()) {
                // ✅ Convert String → Date (assuming format yyyy-MM-dd from input type="date")
                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
                admission.setDob(sdf.parse(dob));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        admission.setGender(gender);
        admission.setFatherName(fatherName);
        admission.setMotherName(motherName);
        admission.setAddress(address);

        admissionService.saveAdmission(admission);

        return "thankyou";  // thankyou.jsp
    }



    @GetMapping("/panel")
    public String adminPanel(Model model) {
        model.addAttribute("admissions", admissionService.getAllAdmissions());
        return "adminpanel"; // adminpanel.jsp
    }

    @GetMapping("/delete/{id}")
    public String deleteAdmission(@PathVariable Long id) {
        admissionService.deleteAdmission(id);
        return "redirect:/admission/panel";
    }

    @GetMapping("/print/{id}")
    public String printAdmission(@PathVariable Long id, Model model) {
        Admission admission = admissionService.getAdmissionById(id);
        model.addAttribute("admission", admission);
        return "printAdmission"; // printAdmission.jsp
    }
}
