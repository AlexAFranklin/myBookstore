package com.myBookstore.bookstore.service;

import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookServiceImpl implements IBookService{


    private BookRepository bookRepository;

    @Autowired
    public BookServiceImpl(BookRepository theBookRepository) {

        bookRepository = theBookRepository;
    }



    @Override
    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    @Override
    public Optional<Book> findById(int theId) {
        return bookRepository.findById(theId);

        // TODO - handle optional in controller
//        @GetMapping("/products/{code}")
//        public ResponseEntity<Product> findByCode(@PathVariable String code) {
//            return productService.findByCode(code).map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.noContent().build());
//        } -- from StackOverflow
    }

    @Override
    public List<Book> findByGenre(Genre theGenre) {
        return null;
    }

    @Override
    public void save(Book theBook) {

    }
}
