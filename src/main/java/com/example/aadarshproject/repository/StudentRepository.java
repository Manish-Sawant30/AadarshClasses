package com.example.aadarshproject.repository;

import com.example.aadarshproject.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    Student findByPhoneAndPassword(String phone, String password);
    Student findByPhone(String phone);
}
