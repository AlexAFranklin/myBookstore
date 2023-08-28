package com.myBookstore.bookstore.service;

import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;

import java.util.List;
import java.util.Optional;

public interface IBookService {
    List<Book> findAll();

    List<Book> findAllByAvailable(boolean available);

    Optional<Book> findById(int theId);

    List<Book> findByGenre(Genre theGenre);

    void save(Book theBook);

}
