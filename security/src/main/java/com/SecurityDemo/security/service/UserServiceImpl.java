package com.SecurityDemo.security.service;

import com.SecurityDemo.security.entity.User;
import com.SecurityDemo.security.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository theUserRepository){
        userRepository = theUserRepository;
    }

    @Override
    public void save(User theUser) {
        userRepository.save(theUser);
    }
}
