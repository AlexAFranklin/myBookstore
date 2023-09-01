package com.myBookstore.bookstore.controller;

public class STASHEDCHANGES {


    //    @PostMapping("cancel/{id}")
//    public void cancelRequest(@PathVariable int id){
//        iRequestService.cancelRequest(id);
//    }
    @PostMapping("/cancel")
    public String cancelRequest(@ModelAttribute("theRequest") Requests theRequest){
        iRequestService.cancelRequest(theRequest.getId());
        return "requests";
    }

    @PostMapping("/approve")
    public String approveRequest(@ModelAttribute("theRequest") Requests theRequest){
        String employeeId = theRequest.getEmployeeId();
        int requestId = theRequest.getId();
        iRequestService.processRequest(requestId, employeeId, "FULFILLED");
        return "requests";
    }

    @GetMapping("/all")
    @GetMapping("")
    public String listAllRequests (Model theModel) {
        List <RequestViewDto> requestList = iRequestService.getAllRequestsWithBookDetails();
        theModel.addAttribute("requests", requestList);














}
