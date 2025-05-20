package com.realestate.model;

import java.io.Serializable;

/**
 * Agent class representing a real estate agent in the system
 */
public class Agent implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private int id;
    private String name;
    private String email;
    private String phone;
    private String expertise;
    private String imagePath;
    private double rating;

    // Default constructor for JSP/EL compatibility
    public Agent() {}

    // All-args constructor
    public Agent(int id, String name, String email, String phone,
                 String expertise, String imagePath) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.expertise = expertise;
        this.imagePath = imagePath;
        this.rating = 0.0; // Default rating
    }
    
    // Constructor with rating
    public Agent(int id, String name, String email, String phone,
                 String expertise, String imagePath, double rating) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.expertise = expertise;
        this.imagePath = imagePath;
        this.rating = rating;
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getExpertise() { return expertise; }
    public String getImagePath() { return imagePath; }
    public double getRating() { return rating; }

    // Setters with basic validation
    public void setRating(double rating) {
        this.rating = rating;
    }

    public void setId(int id) {
        if(id < 0) throw new IllegalArgumentException("ID cannot be negative");
        this.id = id;
    }

    public void setName(String name) {
        if(name == null || name.trim().isEmpty()) {
            throw new IllegalArgumentException("Name cannot be empty");
        }
        this.name = name.trim();
    }

    public void setEmail(String email) {
        if(email == null || !email.contains("@")) {
            throw new IllegalArgumentException("Invalid email format");
        }
        this.email = email.trim().toLowerCase();
    }

    public void setPhone(String phone) {
        if(phone == null || phone.trim().isEmpty()) {
            throw new IllegalArgumentException("Phone cannot be empty");
        }
        this.phone = phone.trim();
    }

    public void setExpertise(String expertise) {
        this.expertise = (expertise != null) ? expertise.trim() : "General";
    }

    public void setImagePath(String imagePath) {
        this.imagePath = (imagePath != null) ? imagePath.trim() : "default-avatar.png";
    }

    @Override
    public String toString() {
        return "Agent{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", expertise='" + expertise + '\'' +
                ", rating='" + rating + '\'' +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }
}
