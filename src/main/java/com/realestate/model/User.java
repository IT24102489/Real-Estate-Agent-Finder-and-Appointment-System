package com.realestate.model;

import java.io.Serializable;

public abstract class User implements Serializable {
    protected String name;
    protected String email;
    protected String username;
    protected String password;

    public User(String name, String email, String username, String password) {
        this.name = name;
        this.email = email;
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public String getEmail() {
        return this.email;
    }

    public String getName() {
        return this.name;
    }

    public abstract String getRole();
}
