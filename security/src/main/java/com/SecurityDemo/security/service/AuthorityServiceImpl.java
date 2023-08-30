package com.SecurityDemo.security.service;

import com.SecurityDemo.security.entity.Authority;
import com.SecurityDemo.security.repository.AuthorityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorityServiceImpl implements IAuthorityService{

    @Autowired
    private final AuthorityRepository authorityRepository;

    public AuthorityServiceImpl(AuthorityRepository TheAuthorityRepository){

        authorityRepository = TheAuthorityRepository;
    }

    @Override
    public void save(Authority newAuth) {
        authorityRepository.save(newAuth);
    }
}
