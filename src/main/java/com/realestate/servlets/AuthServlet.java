package com.realestate.servlets;

import com.realestate.dao.UserDAO;
import com.realestate.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet for handling user authentication (login and logout)
 */
// Servlet mapping defined in web.xml
public class AuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        switch (action) {
            case "login":
                // Handle login
                handleLogin(request, response);
                break;
            case "logout":
                // Handle logout
                handleLogout(request, response);
                break;
            default:
                // Invalid action
                response.sendRedirect("login.jsp?error=invalid_action");
                break;
        }
    }
    
    /**
     * Handle user login
     */
    private void handleLogin(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String redirectUrl = request.getParameter("redirect");
        
        // Validate input
        if (username == null || username.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            response.sendRedirect("login.jsp?error=empty_fields");
            return;
        }
        
        // Authenticate user
        UserDAO userDAO = new UserDAO();
        User user = userDAO.authenticate(username, password);
        
        if (user != null) {
            // Authentication successful
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            
            // Redirect to appropriate page based on role or requested redirect
            if (redirectUrl != null && !redirectUrl.trim().isEmpty()) {
                response.sendRedirect(redirectUrl);
            } else {
                // All users go to index page with success message
                response.sendRedirect("index.jsp?login=success&role=" + user.getRole());
            }
        } else {
            // Authentication failed
            response.sendRedirect("login.jsp?error=invalid_credentials");
        }
    }
    
    /**
     * Handle user logout
     */
    private void handleLogout(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        
        response.sendRedirect("index.jsp?loggedOut=true");
    }
    
    /**
     * Handle GET requests (e.g., for logout links)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("logout".equals(action)) {
            // Handle logout
            handleLogout(request, response);
        } else {
            // Redirect to login page for any other action
            response.sendRedirect("login.jsp");
        }
    }
}
