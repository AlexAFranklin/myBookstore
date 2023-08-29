package com.myBookstore.bookstore.controller;


import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import com.myBookstore.bookstore.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

//@Controller
@RestController
@RequestMapping("/books")
public class BookController {

    @Autowired
    private IBookService iBookService;

    public BookController(IBookService theBookService) {
        iBookService = theBookService;
    }


    @GetMapping("/all")
    public List<Book> findAll() {
        return iBookService.findAll();
    }

    @GetMapping("")
    public List<Book> findAllAvailable() {
        return iBookService.findAllByAvailable(true);
    }


    @GetMapping("/genre/all/{genre}")
    public List<Book> findAllAdmin(@PathVariable Genre genre) {
        return iBookService.findByGenre(genre);

    }

    @GetMapping("/genre/{genre}")
    public List<Book> findAll(@PathVariable Genre genre) {
        return iBookService.findByGenreAndAvailable(genre, true);

    }
    @GetMapping("/all/{id}")
    public ResponseEntity<Book> findByIdAdmin(@PathVariable int id) {
        return iBookService.findById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.noContent().build());

    }

    @GetMapping("/{id}")
    public ResponseEntity<Book> findById(@PathVariable int id) {
        return iBookService.findByIdAndAvailable(id, true)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.noContent().build());

    }

    @PostMapping("")
    public void addBook(@RequestBody Book newBook) {
        iBookService.save(newBook);
    }

    @GetMapping("/price/{price}")
    public List<Book> findByPrice(@PathVariable double price) {
        return iBookService.findByPrice(price);
    }
}