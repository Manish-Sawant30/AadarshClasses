
package com.example.aadarshproject.config;

import com.example.aadarshproject.service.impl.CustomUserDetailsServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    private final CustomUserDetailsServiceImpl customUserDetailsService;

    public SecurityConfig(CustomUserDetailsServiceImpl customUserDetailsService) {
        this.customUserDetailsService = customUserDetailsService;
    }

    // ✅ Password encoder
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    // ✅ Authentication provider (ties Spring Security to your DB)
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(customUserDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

    // ✅ Authentication manager (needed for Spring Security to work)
    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }

    // ✅ Security filter chain
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .authorizeHttpRequests(auth -> auth
                .requestMatchers("/admin/login", "/css/**", "/js/**").permitAll()  // public login page + assets
                .requestMatchers("/admin/**").hasRole("ADMIN")                     // only admins can access /admin/**
                .anyRequest().permitAll()                                         // everything else open
            )
            .formLogin(form -> form
                .loginPage("/admin/login")                      // custom login JSP
                .loginProcessingUrl("/admin/login")             // form action
                .defaultSuccessUrl("/admin/adminfinal", true)   // redirect after success
                .failureUrl("/admin/login?error=true")          // redirect on failure
                .permitAll()
            )
            .logout(logout -> logout
                .logoutUrl("/admin/logout")                     // logout URL
                .logoutSuccessUrl("/admin/login?logout=true")   // redirect after logout
                .permitAll()
            )
            .csrf(csrf -> csrf.disable()); // ❌ Disable only if you face CSRF issues, else remove this line

        return http.build();
    }
}
