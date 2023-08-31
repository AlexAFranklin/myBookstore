//package com.myBookstore.bookstore.controller;
//
//import com.myBookstore.bookstore.entity.Book;
//import com.myBookstore.bookstore.entity.RequestViewDto;
//import com.myBookstore.bookstore.entity.Requests;
//import com.myBookstore.bookstore.service.IBookService;
//import com.myBookstore.bookstore.service.IRequestService;
//import jakarta.persistence.criteria.CriteriaBuilder;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//
//import java.math.BigDecimal;
//import java.util.*;
//
//@RestController
//@RequestMapping("requests")
//public class RequestController {
//
//    @Autowired
//    private IRequestService iRequestService;
//    private IBookService iBookService;
//
//    public RequestController(IRequestService theRequestService, IBookService theBookService) {
//        iRequestService = theRequestService;
//        iBookService = theBookService;
//    }
//
//
//
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
//
//    @GetMapping("/all")
//    public ResponseEntity<List<RequestViewDto>> viewAllRequests() {
//        List<RequestViewDto> requestViewDtoList = iRequestService.getAllRequestsWithBookDetails();
//        return ResponseEntity.ok(requestViewDtoList);
//    }
//    @GetMapping("/my-requests/{customerId}")
//    public ResponseEntity<List<RequestViewDto>> viewUsersRequests(@PathVariable String customerId) {
//        List<RequestViewDto> requestViewDtoList = iRequestService.getRequestsWithBookDetailsByCustomerId(customerId);
//        return ResponseEntity.ok(requestViewDtoList);
//    }
//
//    @GetMapping("/status/{status}")
//    public ResponseEntity<List<RequestViewDto>> viewByStatus(@PathVariable String status){
//        List<RequestViewDto> requestViewDtoList = iRequestService.findAllByStatus(status);
//        return ResponseEntity.ok(requestViewDtoList);
//    }
//
//
//
//
//
//}
