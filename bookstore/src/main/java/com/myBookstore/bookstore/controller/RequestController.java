package com.myBookstore.bookstore.controller;

import com.myBookstore.bookstore.entity.Book;
import com.myBookstore.bookstore.entity.RequestViewDto;
import com.myBookstore.bookstore.entity.Requests;
import com.myBookstore.bookstore.service.IBookService;
import com.myBookstore.bookstore.service.IRequestService;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.*;

@Controller
@RequestMapping("/requests")
public class RequestController {

    @Autowired
    private IRequestService iRequestService;
    private IBookService iBookService;

    public RequestController(IRequestService theRequestService, IBookService theBookService) {
        iRequestService = theRequestService;
        iBookService = theBookService;
    }



//    @PostMapping("new")
//    public void addRequest(@RequestBody Requests newRequest){
//        iRequestService.save(newRequest);
//    }
//
//    @PostMapping("/process/{id}")
//    public void processRequest(@PathVariable int id, @RequestBody Map<String, String> requestBody){
//        String employeeId = requestBody.get("employeeId");
//        String status = requestBody.get("status");
//        iRequestService.processRequest(id, employeeId, status);
//    }
//
//    @PostMapping("cancel/{id}")
//    public void cancelRequest(@PathVariable int id){
//        iRequestService.cancelRequest(id);
//    }

    @GetMapping("/all")
    public String listAllRequests (Model theModel) {
        List <RequestViewDto> requestList = iRequestService.getAllRequestsWithBookDetails();
        theModel.addAttribute("requests", requestList);
        return "requests";
    }

    @GetMapping("/my-requests/{customerId}")
    public String listUserRequests(@PathVariable String customerId, Model theModel){
        List <RequestViewDto> requestList = iRequestService.getRequestsWithBookDetailsByCustomerId(customerId);
        theModel.addAttribute("requests", requestList);
        return "requests";
    }

    @GetMapping("/status/{status}")
    public String listByStatus(@PathVariable String status, Model theModel){
        List <RequestViewDto> requestList = iRequestService.findAllByStatus(status);
        theModel.addAttribute("requests", requestList);
        return "requests";
    }







}
