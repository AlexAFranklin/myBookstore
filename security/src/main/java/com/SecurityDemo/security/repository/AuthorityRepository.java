package com.SecurityDemo.security.repository;

import com.SecurityDemo.security.entity.Authority;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorityRepository extends JpaRepository<Authority, Integer> {

}
