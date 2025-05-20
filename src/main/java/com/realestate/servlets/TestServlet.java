package com.realestate.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Simple test servlet to verify application is running correctly
 */
public class TestServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().println("<html><body>");
        response.getWriter().println("<h1>IT24102096 Ratings and Review System</h1>");
        response.getWriter().println("<p>Test servlet is working correctly.</p>");
        response.getWriter().println("<p><a href='index.jsp'>Go to Home Page</a></p>");
        response.getWriter().println("</body></html>");
    }
}
