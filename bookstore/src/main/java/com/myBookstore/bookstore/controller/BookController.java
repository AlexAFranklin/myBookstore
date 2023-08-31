package com.myBookstore.bookstore.controller;


import com.myBookstore.bookstore.dao.BookRepository;
import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.Genre;
import com.myBookstore.bookstore.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
//@RestController
@RequestMapping("/books")
public class BookController {

    @Autowired
    private IBookService iBookService;

    public BookController(IBookService theBookService) {
        iBookService = theBookService;
    }


    // TODO only available to admn and employee
    @GetMapping("/all")
    public String listAllBooks (Model theModel) {
        List<Book> theBooks = iBookService.findAll();
        theModel.addAttribute("books", theBooks);
        return "books";
    }


    @GetMapping("")
    public String listAllAvailable (Model theModel) {

    List<Book> theBooks =  iBookService.findAllByAvailable(true);
    theModel.addAttribute("books", theBooks);
    return "books";
    }


    @GetMapping("/genre/all/{genre}")
    public String listByGenre(@PathVariable Genre genre, Model theModel) {
        List<Book> theBooks = iBookService.findByGenre(genre);
        theModel.addAttribute("books", theBooks);
        return "books";
    }


    @GetMapping("/genre/{genre}")
    public String listByGenreAvailable(@PathVariable Genre genre, Model theModel) {
        List<Book> theBooks = iBookService.findByGenreAndAvailable(genre, true);
        theModel.addAttribute("books", theBooks);
        return "books";
    }

@GetMapping("/newAddPage")
    public String newAddPage(){
        return "addbook";
}


//    @GetMapping("/all/{id}")
//    public ResponseEntity<Book> findByIdAdmin(@PathVariable int id) {
//        return iBookService.findById(id)
//                .map(ResponseEntity::ok)
//                .orElseGet(() -> ResponseEntity.noContent().build());
//
//    }
//
//    @GetMapping("/{id}")
//    public ResponseEntity<Book> findById(@PathVariable int id) {
//        return iBookService.findByIdAndAvailable(id, true)
//                .map(ResponseEntity::ok)
//                .orElseGet(() -> ResponseEntity.noContent().build());
//
//    }
//
//    @PostMapping("")
//    public void addBook(@RequestBody Book newBook) {
//
//        iBookService.save(newBook);
//    }
//
//    @PostMapping("update/{id}")
//    public void updateBook(@RequestBody Book newBook) {
//
//        iBookService.save(newBook);
//    }
//
//    @GetMapping("/price/{price}")
//    public List<Book> findByPrice(@PathVariable double price) {
//        return iBookService.findByPrice(price);
//    }
//
//    @PostMapping("/inventory-update/{id}")
//    public void updateInventory(@PathVariable int id, @RequestBody Map<String, Integer> requestBody){
//        int inventory = requestBody.get("inventory");
//        iBookService.updateInventory(id, inventory);
//    }
//
//    @PostMapping("/available-update/{id}")
//    public void updateAvailability(@PathVariable int id, @RequestBody Map<String, Boolean> requestBody){
//        boolean available = requestBody.get("available");
//        iBookService.updateAvailability(id, available);
//    }
}