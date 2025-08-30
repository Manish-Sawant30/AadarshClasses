package com.example.aadarshproject.service;

import com.example.aadarshproject.model.Admission;
import java.util.List;

public interface AdmissionService {
    Admission saveAdmission(Admission admission);
    List<Admission> getAllAdmissions();
    void deleteAdmission(Long id);
    Admission getAdmissionById(Long id);
    List<Admission> findByStd(String std); // ✅ filter by std
}
