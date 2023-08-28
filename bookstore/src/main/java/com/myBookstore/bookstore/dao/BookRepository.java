package com.myBookstore.bookstore.dao;

import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


public interface BookRepository extends JpaRepository<Book, Integer> {

    List<Book> findByGenre(Genre theGenre);
    List<Book> findAllByAvailable(Boolean available);

}




