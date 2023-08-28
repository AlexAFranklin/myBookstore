package com.myBookstore.bookstore.controller;


import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import com.myBookstore.bookstore.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

//@Controller
@RestController
@RequestMapping("/books")
public class BookController {

    @Autowired
    private IBookService iBookService;

    public BookController(IBookService theBookService) {
        iBookService = theBookService;
    }


    @GetMapping("")
    public List<Book> findAll() {
        return iBookService.findAll();
    }

    @GetMapping("/{genre}")
    public List<Book> findAll(@PathVariable Genre genre) {
        return iBookService.findByGenre(genre);

    }
}