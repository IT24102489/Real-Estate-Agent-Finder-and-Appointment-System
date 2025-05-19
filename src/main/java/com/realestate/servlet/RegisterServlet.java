package com.realestate.servlet;

import com.realestate.model.*;
import com.realestate.util.FileUtil;
import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        User user = null;
        switch (role) {
            case "client": user = new Client(name, email, username, password); break;
            case "agent": user = new Agent(name, email, username, password); break;
            case "admin": user = new Admin(name, email, username, password); break;
        }

        try {
            if (user != null) {

                FileUtil.saveUser(user);

                request.setAttribute("registrationStatus", "Registration successful!");
            } else {

                request.setAttribute("registrationStatus", "Error: Invalid user role.");
            }
        } catch (IOException e) {

            request.setAttribute("registrationStatus", "Error: Could not save user. Please try again.");
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
}
