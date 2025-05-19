package com.realestate.model;

public class Admin extends User {
    public Admin(String name, String email, String username, String password) {
        super(name, email, username, password);
    }

    @Override
    public String getRole() {
        return "admin";
    }
}
