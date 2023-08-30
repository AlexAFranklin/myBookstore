package com.myBookstore.bookstore.service;

import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.dao.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RequestServiceImpl implements IRequestService {
    @Autowired
    private final RequestRepository requestRepository;

    public RequestServiceImpl(RequestRepository theRequestRepository) {

        requestRepository = theRequestRepository;
    }

}
