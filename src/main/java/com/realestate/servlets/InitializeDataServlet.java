package com.realestate.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet that initializes sample data on application startup
 * This helps ensure proper application initialization
 */
public class InitializeDataServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try {
            System.out.println("IT24102096 Ratings and Review System initializing...");
            // Any initialization code can be added here
            System.out.println("IT24102096 Ratings and Review System initialized successfully.");
        } catch (Exception e) {
            System.err.println("Error initializing IT24102096 Ratings and Review System: " + e.getMessage());
            // Log the error instead of printing stack trace
            getServletContext().log("Initialization error", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<h1>IT24102096 Ratings and Review System</h1>");
        response.getWriter().println("<p>System initialized successfully.</p>");
        response.getWriter().println("<p><a href='index.jsp'>Go to Home Page</a></p>");
    }
}
