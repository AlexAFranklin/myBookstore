package com.SecurityDemo.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;


@Controller
public class DemoController {
    @GetMapping("")
    public String sayHello(){
        return "hello";
    }

//    @GetMapping("")
//    public String sayHello(Model model) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        System.out.println("Principal: " + authentication.getPrincipal());
//
//        // Other logic and model attributes
//
//        return "hello"; // Return the name of your Thymeleaf template
//    }

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "plain-login";
    }


}
