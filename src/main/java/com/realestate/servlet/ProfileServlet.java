package com.realestate.servlet;

import com.realestate.model.User;
import com.realestate.util.FileUtil;
import com.realestate.model.Client;
import com.realestate.model.Agent;
import com.realestate.model.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        User user = null;


        if (session != null && session.getAttribute("user") != null) {
            user = (User) session.getAttribute("user");
            String username = user.getUsername();


            for (String role : new String[]{"client", "agent", "admin"}) {
                String filePath = FileUtil.getFileForRole(role);
                if (filePath != null) {
                    try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
                        String line;
                        while ((line = br.readLine()) != null) {
                            String[] parts = line.split(",");
                            if (parts.length == 4 && parts[2].equals(username)) {
                                switch (role) {
                                    case "client":
                                        user = new Client(parts[0], parts[1], parts[2], parts[3]);
                                        break;
                                    case "agent":
                                        user = new Agent(parts[0], parts[1], parts[2], parts[3]);
                                        break;
                                    case "admin":
                                        user = new Admin(parts[0], parts[1], parts[2], parts[3]);
                                        break;
                                }
                                break;
                            }
                        }
                        if (user != null && user.getRole().equals(role)) {
                            break;
                        }
                    }
                }
            }
        }

        if (user != null) {
            request.setAttribute("user", user);
            request.getRequestDispatcher("/pages/profile.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
        }
    }
}