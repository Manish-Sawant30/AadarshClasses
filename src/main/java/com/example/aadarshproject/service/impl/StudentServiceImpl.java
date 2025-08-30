package com.example.aadarshproject.service.impl;

import com.example.aadarshproject.model.Student;
import com.example.aadarshproject.repository.StudentRepository;
import com.example.aadarshproject.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public Student registerStudent(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public Student loginStudent(String phone, String password) {
        return studentRepository.findByPhoneAndPassword(phone, password);
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    // ✅ New method
    @Override
    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }
}
