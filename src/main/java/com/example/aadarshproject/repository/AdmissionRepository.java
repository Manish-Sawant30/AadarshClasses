package com.example.aadarshproject.repository;

import com.example.aadarshproject.model.Admission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface AdmissionRepository extends JpaRepository<Admission, Long> {
    List<Admission> findByStd(String std); // ✅ Spring Data auto query
}
