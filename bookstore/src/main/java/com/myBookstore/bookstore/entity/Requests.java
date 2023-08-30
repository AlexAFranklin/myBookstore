package com.myBookstore.bookstore.entity;
import jakarta.persistence.*;

import java.util.Date;


@Entity
@Table(name = "requests")
public class Requests {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name="book_id")
    private int bookId;

    @Column(name="customer_id")
    private String customerId;

    @Column(name="employee_id")
    private String employeeId;

    @Column(name="request_date")
    private Date requestDate;

    @Column(name="status_update_date")
    private Date updateDate;

    @Column(name="status")
    private String status;

    public Requests() {
    }

    public Requests(int id, int bookId, String customerId, String employeeId, Date requestDate, Date updateDate, String status) {
        this.id = id;
        this.bookId = bookId;
        this.customerId = customerId;
        this.employeeId = employeeId;
        this.requestDate = requestDate;
        this.updateDate = updateDate;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public Date getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(Date requestDate) {
        this.requestDate = requestDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Requests{" +
                "id=" + id +
                ", bookId=" + bookId +
                ", customerId='" + customerId + '\'' +
                ", employeeId='" + employeeId + '\'' +
                ", requestDate=" + requestDate +
                ", updateDate=" + updateDate +
                ", status='" + status + '\'' +
                '}';
    }
}
