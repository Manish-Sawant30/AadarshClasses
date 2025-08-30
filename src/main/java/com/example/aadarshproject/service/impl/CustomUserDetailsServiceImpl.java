package com.example.aadarshproject.service.impl;

import com.example.aadarshproject.model.Admin;
import com.example.aadarshproject.repository.AdminRepository;
import com.example.aadarshproject.service.CustomUserDetailsService;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsServiceImpl implements CustomUserDetailsService {

    private final AdminRepository adminRepository;

    public CustomUserDetailsServiceImpl(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Admin admin = adminRepository.findByUsername(username);
        if (admin == null) {
            throw new UsernameNotFoundException("User not found: " + username);
        }

        // ✅ Use authorities because DB has ROLE_ADMIN
        return User.withUsername(admin.getUsername())
                .password(admin.getPassword())     // BCrypt hash from DB
                .authorities(admin.getRole())      // "ROLE_ADMIN"
                .build();
    }
}
