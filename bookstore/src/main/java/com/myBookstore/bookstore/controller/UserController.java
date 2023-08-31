package com.myBookstore.bookstore.controller;

import com.myBookstore.bookstore.service.IAuthorityService;
import com.myBookstore.bookstore.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Controller
public class UserController {

    private IUserService iUserService;
    private IAuthorityService iAuthorityService;

    public UserController(IUserService theUserService, IAuthorityService theAuthorityService){
        iUserService = theUserService;
        iAuthorityService = theAuthorityService;
    }
    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "login";
    }
}
