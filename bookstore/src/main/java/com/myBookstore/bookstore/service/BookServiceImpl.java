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

@Autowired
    private final BookRepository bookRepository;

    public BookServiceImpl(BookRepository theBookRepository) {

        bookRepository = theBookRepository;
    }



    @Override
    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    @Override
    public List<Book> findAllByAvailable(boolean available){

        return bookRepository.findAllByAvailable(available);
    }


    @Override
    public Optional<Book> findById(int theId) {
        return bookRepository.findById(theId);
    }

    @Override
    public List<Book> findByGenre(Genre theGenre) {
        return bookRepository.findByGenre(theGenre);
    }

    @Override
    public List<Book> findByGenreAndAvailable(Genre genre, boolean available){
        return bookRepository.findByGenreAndAvailable(genre, available);
    }
    @Override
    public Optional<Book> findByIdAndAvailable(int id, boolean available){
        return bookRepository.findByIdAndAvailable(id, available);
    }
    @Override
    public void save(Book theBook) {
    bookRepository.save(theBook);
    }

    @Override
    public List<Book> findByPrice(double price){
        return bookRepository.findByPrice(price);
    }
}

