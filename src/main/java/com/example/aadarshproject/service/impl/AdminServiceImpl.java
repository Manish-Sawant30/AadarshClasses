package com.example.aadarshproject.service.impl;

import com.example.aadarshproject.model.Admin;
import com.example.aadarshproject.repository.AdminRepository;
import com.example.aadarshproject.repository.StudentRepository;
import com.example.aadarshproject.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private StudentRepository studentRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Override
    public Admin validateAdmin(String username, String password) {
        Admin admin = adminRepository.findByUsername(username);
        if (admin != null && passwordEncoder.matches(password, admin.getPassword())) {
            return admin;
        }
        return null;
    }

    @Override
    public void saveAdmin(Admin admin) {
        // ✅ hash password before saving
        admin.setPassword(passwordEncoder.encode(admin.getPassword()));
        adminRepository.save(admin);
    }

    @Override
    public long getStudentCount() {
        return studentRepository.count();
    }

    @Override
    public long getTeacherCount() {
        return 0; // implement later
    }

    @Override
    public long getCourseCount() {
        return 0; // implement later
    }
}
