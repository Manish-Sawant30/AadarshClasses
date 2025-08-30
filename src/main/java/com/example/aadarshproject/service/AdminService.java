package com.example.aadarshproject.service;

import com.example.aadarshproject.model.Admin;

public interface AdminService {
    Admin validateAdmin(String username, String password);

    // ✅ Added this so saveAdmin works in Impl
    void saveAdmin(Admin admin);

    long getStudentCount();
    long getTeacherCount();
    long getCourseCount();
}
