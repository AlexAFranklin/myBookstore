package com.myBookstore.bookstore.service;

import com.myBookstore.bookstore.entity.Requests;


import java.util.List;

public interface IRequestService {
    List<Requests> findAll();

}
