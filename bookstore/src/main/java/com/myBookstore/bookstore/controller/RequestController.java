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



    @PostMapping("/new")
    public String addRequest(@ModelAttribute("theRequest") Requests newRequest){
        newRequest.setStatus("REQUEST");
        System.out.println(newRequest.getBookId());
        iRequestService.save(newRequest);
        return "redirect:/books";
    }


    @PostMapping("/cancel")
    public String cancelRequest(@ModelAttribute("theRequest") Requests theRequest){
        iRequestService.cancelRequest(theRequest.getId());
        return "redirect:/requests";
    }

    @PostMapping("/approve")
    public String approveRequest(@ModelAttribute("theRequest") Requests theRequest){
        String employeeId = theRequest.getEmployeeId();
        int requestId = theRequest.getId();
        iRequestService.processRequest(requestId, employeeId, "FULFILLED");
        return "redirect:/requests";
    }

    @GetMapping("")
    public String listAllRequests (Model theModel) {
        List <RequestViewDto> requestList = iRequestService.getAllRequestsWithBookDetails();
        theModel.addAttribute("requests", requestList);
        return "requests";
    }

//    @GetMapping("/my-requests/{customerId}")
//    public String listUserRequests(@PathVariable String customerId, Model theModel){
//        List <RequestViewDto> requestList = iRequestService.getRequestsWithBookDetailsByCustomerId(customerId);
//        theModel.addAttribute("requests", requestList);
//        return "requests";
//    }

    @GetMapping("/status/{status}")
    public String listByStatus(@PathVariable String status, Model theModel){
        List <RequestViewDto> requestList = iRequestService.findAllByStatus(status);
        theModel.addAttribute("requests", requestList);
        return "requests";
    }







}
