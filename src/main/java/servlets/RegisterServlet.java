package servlets;

import model.*;
import model.FileUtil;
import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Admin;
import model.Agent;
import model.Client;
import model.User;

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
                // Save the user
                FileUtil.saveUser(user);
                // Set a success message
                request.setAttribute("registrationStatus", "Registration successful!");
            } else {
                // Set an error message
                request.setAttribute("registrationStatus", "Error: Invalid user role.");
            }
        } catch (IOException e) {
            // Handle error during saving the user
            request.setAttribute("registrationStatus", "Error: Could not save user. Please try again.");
        }

        // Redirect to the UserDashboard.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("UserDashboard.jsp");
        dispatcher.forward(request, response);
    }
}
