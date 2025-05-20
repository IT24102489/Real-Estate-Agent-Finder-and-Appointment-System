package com.realestate.dao;

import com.realestate.model.User;

import java.io.*;
import java.util.*;

/**
 * Data Access Object for User management
 * Handles saving and retrieving User objects from files
 */
public class UserDAO {
    private static final String DATA_DIR = "data";
    private final String USERS_FILE = DATA_DIR + File.separator + "users.dat";
    private final String USERS_TEXT_FILE = DATA_DIR + File.separator + "users.txt";
    
    // Ensure data directory exists
    static {
        File dir = new File(DATA_DIR);
        if (!dir.exists()) {
            boolean created = dir.mkdirs();
            System.out.println("Data directory created: " + created);
        }
    }
    private final List<User> users;

    public UserDAO() {
        users = new ArrayList<>();
        loadUsers();
        
        // If no users were loaded (first run), create sample users
        if (users.isEmpty()) {
            createSampleUsers();
        }
    }

    /**
     * Create sample users for testing
     */
    private void createSampleUsers() {
        // Admin user
        addUser(new User(1, "admin", "admin123", "admin", "Administrator", "admin@realestate.com"));
        
        // Agent users (matching the agent IDs from AgentDAO)
        addUser(new User(2, "johnsmith", "agent123", "agent", "John Smith", "john.smith@realestate.com"));
        addUser(new User(3, "sarahjohnson", "agent123", "agent", "Sarah Johnson", "sarah.j@realestate.com"));
        
        // Client users
        addUser(new User(4, "client1", "client123", "client", "David Miller", "david@example.com"));
        addUser(new User(5, "client2", "client123", "client", "Lisa Chen", "lisa@example.com"));
        
        System.out.println("Created sample users");
    }

    /**
     * Load users from binary file
     */
    @SuppressWarnings("unchecked")
    private void loadUsers() {
        File file = new File(USERS_FILE);
        if (!file.exists()) {
            System.out.println("Users file does not exist yet. Will be created on first save.");
            return;
        }

        try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream(USERS_FILE))) {
            List<User> loadedUsers = (List<User>) ois.readObject();
            users.addAll(loadedUsers);
            System.out.println("Loaded " + users.size() + " users");
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Error loading users: " + e.getMessage());
        }
    }

    /**
     * Save all users to binary and text files
     * @param userList List of User objects
     */
    public void saveAllUsers(List<User> userList) {
        try {
            // Ensure data directory exists
            File dir = new File(DATA_DIR);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            
            // Save to binary file
            try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(USERS_FILE))) {
                oos.writeObject(userList);
                System.out.println("Saved " + userList.size() + " users to " + USERS_FILE);
                
                // Also save as text for easy inspection
                try (PrintWriter writer = new PrintWriter(new FileWriter(USERS_TEXT_FILE))) {
                    for (User user : userList) {
                        writer.println(user);
                    }
                    System.out.println("Saved " + userList.size() + " users to " + USERS_TEXT_FILE);
                }
            }
        } catch (IOException e) {
            System.out.println("Error saving users: " + e.getMessage());
            System.out.println(e);
        }
    }

    /**
     * Save users to binary file
     */
    private void saveUsers() {
        saveAllUsers(users);
    }

    /**
    /**
     * Add a new user
     * @param user User to add
     */
    public void addUser(User user) {
        // Check if username already exists
        for (User existingUser : users) {
            if (existingUser.getUsername().equals(user.getUsername())) {
                throw new IllegalArgumentException("Username already exists");
            }
        }
        
        // If no ID provided, generate one
        if (user.getId() <= 0) {
            user.setId(getNextAvailableId());
        }
        
        users.add(user);
        saveUsers();
    }

    /**
     * Get the next available user ID
     * @return Next available ID
     */
    private int getNextAvailableId() {
        if (users.isEmpty()) {
            return 1;
        }
        
        // Find the highest existing ID and add 1
        int maxId = 0;
        for (User user : users) {
            if (user.getId() > maxId) {
                maxId = user.getId();
            }
        }
        return maxId + 1;
    }

    /**
     * Get all users
     * @return List of all users
     */
    public List<User> getAllUsers() {
        return new ArrayList<>(users);
    }

    /**
     * Get user by ID
     * @param id User ID
     * @return User if found, null otherwise
     */
    public User getUserById(int id) {
        for (User user : users) {
            if (user.getId() == id) {
                return user;
            }
        }
        return null;
    }
    
    /**
     * Get user by username
     * @param username Username to search for
     * @return User if found, null otherwise
     */
    public User getUserByUsername(String username) {
        for (User user : users) {
            if (user.getUsername().equals(username)) {
                return user;
            }
        }
        return null;
    }

    /**
     * Update an existing user
     * @param user Updated user object
     */
    public void updateUser(User user) {
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getId() == user.getId()) {
                users.set(i, user);
                saveUsers();
                return;
            }
        }
        throw new IllegalArgumentException("User not found");
    }

    /**
     * Delete a user
     * @param id ID of user to delete
     */
    public void deleteUser(int id) {
        Iterator<User> iterator = users.iterator();
        while (iterator.hasNext()) {
            User user = iterator.next();
            if (user.getId() == id) {
                iterator.remove();
                saveUsers();
                return;
            }
        }
        throw new IllegalArgumentException("User not found");
    }
    
    /**
     * Authenticate a user
     * @param username Username
     * @param password Password
     * @return User object if authentication successful, null otherwise
     */
    public User authenticate(String username, String password) {
        User user = getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
