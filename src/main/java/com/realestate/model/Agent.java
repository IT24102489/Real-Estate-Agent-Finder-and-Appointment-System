package com.realestate.model;

public class Agent extends User {
    public Agent(String name, String email, String username, String password) {
        super(name, email, username, password);
    }

    @Override
    public String getRole() {
        return "agent";
    }
}
