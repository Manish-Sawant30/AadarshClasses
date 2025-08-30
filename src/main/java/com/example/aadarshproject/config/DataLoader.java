package com.example.aadarshproject.config;

import com.example.aadarshproject.model.Admin;
import com.example.aadarshproject.repository.AdminRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class DataLoader {

    @Bean
    CommandLineRunner initAdmin(AdminRepository adminRepository, BCryptPasswordEncoder encoder) {
        return args -> {
            if (adminRepository.findByUsername("Admin") == null) {
                Admin admin = new Admin();
                admin.setUsername("Admin");
                admin.setPassword(encoder.encode("Sawant30"));
                admin.setRole("ROLE_ADMIN"); // <<==== IMPORTANT
                adminRepository.save(admin);
                System.out.println("✅ Default Admin: Admin / Sawant30 (ROLE_ADMIN)");
            }
        };
    }
}
