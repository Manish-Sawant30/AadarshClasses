package com.example.aadarshproject.service.impl;

import com.example.aadarshproject.model.Admission;
import com.example.aadarshproject.repository.AdmissionRepository;
import com.example.aadarshproject.service.AdmissionService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdmissionServiceImpl implements AdmissionService {

    private final AdmissionRepository admissionRepository;

    public AdmissionServiceImpl(AdmissionRepository admissionRepository) {
        this.admissionRepository = admissionRepository;
    }

    @Override
    public Admission saveAdmission(Admission admission) {
        return admissionRepository.save(admission);
    }

    @Override
    public List<Admission> getAllAdmissions() {
        return admissionRepository.findAll();
    }

    @Override
    public void deleteAdmission(Long id) {
        admissionRepository.deleteById(id);
    }

    @Override
    public Admission getAdmissionById(Long id) {
        return admissionRepository.findById(id).orElse(null);
    }

    @Override
    public List<Admission> findByStd(String std) {
        return admissionRepository.findByStd(std);
    }
}
