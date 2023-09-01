package com.myBookstore.bookstore.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.sql.DataSource;

@Configuration
public class SecurityConfiguration {
    @Bean
    public UserDetailsManager userDetailsManager(DataSource dataSource){
        return new JdbcUserDetailsManager(dataSource);
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(configurer ->
                configurer
                        .requestMatchers("").permitAll()
                        .requestMatchers("/").permitAll()
                        .requestMatchers("/books").permitAll()
                        .requestMatchers("/books/").permitAll()
                        .requestMatchers("/books/genre/**").permitAll()
                        .requestMatchers("/books/all").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/books/genre/all/**").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/books/newAddPage").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/books/update").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/books/save").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/books/inventory-update").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/requests/new").hasAnyRole("EMPLOYEE", "ADMIN", "CUSTOMER")
                        .requestMatchers("/requests/cancel").hasAnyRole("EMPLOYEE", "ADMIN", "CUSTOMER")
                        .requestMatchers("/requests/all").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/requests/approve").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/requests/status/**").hasAnyRole("EMPLOYEE", "ADMIN")
                        .requestMatchers("/requests/**").hasAnyRole("EMPLOYEE", "ADMIN")








        ).formLogin(form ->
                        form
                                .loginPage("/showMyLoginPage")
                                .loginProcessingUrl("/authenticateTheUser")
                                .permitAll()
                ).logout(logout -> logout.permitAll())
                .exceptionHandling(configurer ->
                        configurer.accessDeniedPage("/access-denied"));
        ;

//        http.csrf().disable(); // Disable CSRF protection for simplicity

        return http.build();
    }

//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http.authorizeHttpRequests(configurer ->
//                        configurer
//                                .requestMatchers("/").hasAnyRole("CUSTOMER", "EMPLOYEE", "ADMIN")
//                                .requestMatchers("/leaders/**").hasRole("EMPLOYEE")
//                                .requestMatchers("/systems/**").hasRole("ADMIN")
//                                .anyRequest().authenticated()
//                )
//                .formLogin(form ->
//                        form
//                                .loginPage("/showMyLoginPage")
//                                .loginProcessingUrl("/authenticateTheUser")
//                                .permitAll()
//                )
//                .logout(logout -> logout.permitAll())
//                .exceptionHandling(configurer ->
//                        configurer.accessDeniedPage("/access-denied"));
//
//        return http.build();
//    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


}
