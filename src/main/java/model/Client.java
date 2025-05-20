package model;

public class Client extends User {
    public Client(String name, String email, String username, String password) {
        super(name, email, username, password);
    }

    @Override
    public String getRole() {
        return "client";
    }
}
