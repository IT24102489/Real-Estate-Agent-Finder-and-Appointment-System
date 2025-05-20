package com.realestate.servlets;

import com.realestate.dao.ReviewDAO;
import com.realestate.model.Review;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

/**
 * Servlet for displaying reviews for an agent
 */
// Servlet mapping defined in web.xml
public class ListReviewsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Create ReviewDAO instance
            ReviewDAO dao = new ReviewDAO();
            
            // Get agent ID from request parameter
            String agentIdParam = request.getParameter("agentId");
            String sortParam = request.getParameter("sort"); // can be "rating" or "date"
            
            if (agentIdParam != null && !agentIdParam.isEmpty()) {
                int agentId = Integer.parseInt(agentIdParam);
                List<Review> reviews;
                
                // Get reviews for the specified agent
                if ("rating".equals(sortParam)) {
                    // Get reviews sorted by rating (highest first)
                    reviews = dao.getTopRatedReviewsByAgentId(agentId, Integer.MAX_VALUE);
                } else {
                    // Default: get reviews sorted by date (newest first)
                    reviews = dao.getReviewsByAgentId(agentId);
                }
                
                // Calculate average rating
                double averageRating = dao.getAverageRatingForAgent(agentId);
                
                // Set attributes for JSP
                request.setAttribute("reviews", reviews);
                request.setAttribute("agentId", agentId);
                request.setAttribute("averageRating", averageRating);
                request.setAttribute("reviewCount", reviews.size());
                request.setAttribute("sortBy", sortParam != null ? sortParam : "date");
                
                // Forward to reviews page
                request.getRequestDispatcher("agentReviews.jsp").forward(request, response);
            } else {
                // If no agent ID provided, get all reviews
                List<Review> allReviews = dao.getAllReviews();
                request.setAttribute("reviews", allReviews);
                request.getRequestDispatcher("allReviews.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            // Handle invalid agent ID
            request.setAttribute("errorMessage", "Invalid agent ID format.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } catch (IOException e) {
            // Re-throw IO exceptions
            throw e;
        } catch (Exception e) {
            // Handle other errors
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
