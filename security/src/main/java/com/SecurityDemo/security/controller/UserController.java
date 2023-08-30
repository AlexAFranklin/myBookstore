package com.SecurityDemo.security.controller;

import com.SecurityDemo.security.entity.Authority;
import com.SecurityDemo.security.entity.User;
import com.SecurityDemo.security.service.IAuthorityService;
import com.SecurityDemo.security.service.IUserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {

    private IUserService iUserService;
    private IAuthorityService iAuthorityService;

    public UserController(IUserService theUserService, IAuthorityService theAuthorityService){
        iUserService = theUserService;
        iAuthorityService = theAuthorityService;
    }

    @PostMapping("/new/customer")
    public void addCustomer(@RequestBody User user){
        String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
        user.setPassword(encodedPassword);
        iUserService.save(user);
        Authority newAuthority = new Authority(user.getUsername(), "ROLE_CUSTOMER");
        iAuthorityService.save(newAuthority);
    }

    @PostMapping("/new/employee")
    public void addEmployee(@RequestBody User user){
        String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
        user.setPassword(encodedPassword);
        iUserService.save(user);
        Authority newAuthority = new Authority(user.getUsername(), "ROLE_EMPLOYEE");
        iAuthorityService.save(newAuthority);
    }

    @PostMapping("/new/admin")
    public void addAdmin(@RequestBody User user){
        String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());
        user.setPassword(encodedPassword);
        iUserService.save(user);
        Authority newAuthority = new Authority(user.getUsername(), "ROLE_ADMIN");
        iAuthorityService.save(newAuthority);
    }

}
