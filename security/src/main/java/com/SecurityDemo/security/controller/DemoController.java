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


    @GetMapping("")
    public String sayHello(Model model) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        System.out.println("Principal: " + authentication.getPrincipal());
        return "hello";
    }

    @GetMapping("/leaders")
    public String showLeaders() {
        return "leaders";
    }

    @GetMapping("/systems")
    public String showSystems() {
        return "systems";
    }

        @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "plain-login";
    }

    @GetMapping("/access-denied")
        public String showAccessDenied() {
        return "access-denied";
    }


}
