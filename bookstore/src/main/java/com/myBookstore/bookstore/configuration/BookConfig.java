package com.myBookstore.bookstore.configuration;

import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import org.springframework.context.annotation.Configuration;

        import javax.annotation.PostConstruct;
        import java.util.Arrays;
        import java.util.List;

@Configuration
public class BookConfig {

    private final BookRepository bookRepository;

    public BookConfig(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @PostConstruct
    public void initBookData() {
        // Initialize sample book data and save to the repository
        List<Book> sampleBooks = createSampleBooks();
        bookRepository.saveAll(sampleBooks);
    }

    private List<Book> createSampleBooks() {
        Book book1 = new Book("ISBN1", "Title 1", "Author 1", "Publisher 1", "Description 1", 19.99, Genre.FICTION, 10, true);
        Book book2 = new Book("ISBN2", "Title 2", "Author 2", "Publisher 2", "Description 2", 24.99, Genre.MYSTERY_THRILLER, 15, true);


        return Arrays.asList(book1, book2);
    }
}

