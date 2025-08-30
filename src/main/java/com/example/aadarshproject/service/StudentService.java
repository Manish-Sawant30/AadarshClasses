package com.example.aadarshproject.service;

import com.example.aadarshproject.model.Student;
import java.util.List;

public interface StudentService {
    Student registerStudent(Student student);
    Student loginStudent(String phone, String password);
    List<Student> getAllStudents();

    // ✅ New method
    void deleteStudent(Long id);
}
