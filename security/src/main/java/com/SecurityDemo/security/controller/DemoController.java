package com.SecurityDemo.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.GrantedAuthority;

import java.util.List;
import java.util.stream.Collectors;


@Controller
public class DemoController {
//    @GetMapping("")
//    public String sayHello(Model model, Authentication authentication) {
//        String userName = authentication.getName();
//        List<String> roles = authentication.getAuthorities().stream()
//                .map(GrantedAuthority::getAuthority)
//                .collect(Collectors.toList());
//
//        model.addAttribute("userName", userName);
//        model.addAttribute("roles", roles);
//
//        return "hello";
//    }

    @GetMapping("")
    public String sayHello(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        System.out.println("Principal: " + authentication.getPrincipal());

        // Other logic and model attributes

        return "hello"; // Return the name of your Thymeleaf template
    }

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "plain-login";
    }


}
