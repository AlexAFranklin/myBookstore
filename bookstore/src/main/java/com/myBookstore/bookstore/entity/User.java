package com.myBookstore.bookstore.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.*;



@Entity
@Table(name = "users")
public class User {

    @Id
    @NotEmpty(message = "Username is a required field.")
    @Size(min = 4, max = 50, message = "Username must be between 4 and 30 characters")
    @Column(name = "username")
    private String username;

    @NotEmpty(message = "Password is a required field.")
    @Size(min = 6, max = 20, message = "Password must be between 6 and 20 characters")
    @Column(name = "password")
    private String password;

    @NotEmpty(message = "Name is a required field.")
    @Size(min = 4, max = 50, message = "Name must be between 4 and 50 characters")
    @Column(name = "full_name")
    private String fullName;

    @NotEmpty(message = "Email is a required field.")
    @Email(message = "Invalid email address.")
    @Size(max = 100, message = "Email must be less than 100 characters")
    @Column(name = "email")
    private String email;

    @NotNull(message = "Enabled status is a required field")
    @Pattern(regexp = "^(0|1)$", message = "Enabled status should be 0 or 1.")
    @Column(name = "enabled")
    private int enabled;

    public User() {
    }

    public User(String username, String password, String fullName, String email, int enabled) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.enabled = enabled;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}
