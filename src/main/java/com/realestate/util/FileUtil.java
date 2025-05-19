package com.realestate.util;

import com.realestate.model.*;

import java.io.*;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.*;
import java.util.*;

public class FileUtil {

    public static String getFileForRole(String role) throws IOException {
        String fileName;
        switch (role) {
            case "client": fileName = "clients.txt"; break;
            case "agent": fileName = "agents.txt"; break;
            case "admin": fileName = "admins.txt"; break;
            default: return null;
        }


        ClassLoader classLoader = FileUtil.class.getClassLoader();
        URL resource = classLoader.getResource(fileName);

        if (resource != null) {
            try {
                return Paths.get(resource.toURI()).toString();
            } catch (URISyntaxException e) {
                throw new IOException("Invalid URI for resource: " + fileName, e);
            }
        } else {

            Path path = Paths.get("src/main/resources", fileName);
            if (Files.notExists(path)) {
                Files.createDirectories(path.getParent());
                Files.createFile(path);
            }
            return path.toAbsolutePath().toString();
        }
    }

    public static void saveUser(User user) throws IOException {
        String filePath = getFileForRole(user.getRole());
        if (filePath == null) {
            throw new IOException("File path for role " + user.getRole() + " is null.");
        }


        System.out.println("Saving user to file: " + filePath);

        try (BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true))) {
            bw.write(user.getName() + "," + user.getEmail() + "," + user.getUsername() + "," + user.getPassword());
            bw.newLine();
            // Debug logging to ensure data is written
            System.out.println("User data written to file: " + user.getUsername());
        }
    }



    public static User authenticate(String username, String password) throws IOException {
        for (String role : List.of("client", "agent", "admin")) {
            String filePath = getFileForRole(role);
            if (filePath == null) {
                throw new IOException("File path for role " + role + " is null.");
            }
            try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
                String line;
                while ((line = br.readLine()) != null) {
                    String[] parts = line.split(",");
                    if (parts.length == 4 && parts[2].equals(username) && parts[3].equals(password)) {
                        switch (role) {
                            case "client": return new Client(parts[0], parts[1], parts[2], parts[3]);
                            case "agent": return new Agent(parts[0], parts[1], parts[2], parts[3]);
                            case "admin": return new Admin(parts[0], parts[1], parts[2], parts[3]);
                        }
                    }
                }
            }
        }
        return null;
    }


    public static List<User> getAllUsers(String role) throws IOException {
        List<User> users = new ArrayList<>();
        String filePath = getFileForRole(role);
        if (filePath == null) {
            throw new IOException("File path for role " + role + " is null.");
        }
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length == 4) {
                    switch (role) {
                        case "client": users.add(new Client(parts[0], parts[1], parts[2], parts[3])); break;
                        case "agent": users.add(new Agent(parts[0], parts[1], parts[2], parts[3])); break;
                        case "admin": users.add(new Admin(parts[0], parts[1], parts[2], parts[3])); break;
                    }
                }
            }
        }
        return users;
    }
}
