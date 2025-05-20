package com.realestate.servlets;

import com.realestate.dao.AgentDAO;
import com.realestate.dao.ReviewDAO;
import com.realestate.model.Agent;
import com.realestate.model.Review;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * Servlet for handling the addition of new reviews and ratings
 */
// Servlet mapping defined in web.xml
public class AddReviewServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Create ReviewDAO instance
            ReviewDAO dao = new ReviewDAO();
            
            // Get agent ID from request
            int agentId = Integer.parseInt(request.getParameter("agentId"));
            
            // Get other review details from form
            String reviewerName = request.getParameter("reviewerName");
            String reviewerEmail = request.getParameter("reviewerEmail");
            String reviewText = request.getParameter("reviewText");
            int rating = Integer.parseInt(request.getParameter("rating"));
            
            // Create a new Review object
            Review review = new Review();
            review.setAgentId(agentId);
            review.setReviewerName(reviewerName);
            review.setReviewerEmail(reviewerEmail);
            review.setReviewText(reviewText);
            review.setRating(rating);
            
            // Add the review
            dao.addReview(review);
            
            // Redirect back to the agent reviews page
            response.sendRedirect("listReviews?agentId=" + agentId + "&reviewAdded=true");
            
        } catch (NumberFormatException e) {
            // Handle invalid number format
            request.setAttribute("errorMessage", "Invalid input: Please provide valid agent ID and rating.");
            request.getRequestDispatcher("addReview.jsp").forward(request, response);
        } catch (IOException e) {
            // Re-throw IO exceptions
            throw e;
        } catch (Exception e) {
            // Handle other errors
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check if the user is authenticated
        if (request.getSession().getAttribute("user") == null) {
            // User not logged in, redirect to login page
            response.sendRedirect("login.jsp?redirect=listAgents?action=selectForReview");
            return;
        }
        
        // Get the agent ID from request parameter
        String agentIdParam = request.getParameter("agentId");
        
        if (agentIdParam != null && !agentIdParam.isEmpty()) {
            try {
                // Verify agent ID is valid
                int agentId = Integer.parseInt(agentIdParam);
                AgentDAO agentDAO = new AgentDAO();
                Agent agent = agentDAO.getAgentById(agentId);
                
                if (agent != null) {
                    // Set agent information for the review form
                    request.setAttribute("agent", agent);
                    request.setAttribute("agentId", agentId);
                    request.getRequestDispatcher("addReview.jsp").forward(request, response);
                } else {
                    // Agent not found
                    response.sendRedirect("listAgents?error=agentNotFound");
                }
            } catch (NumberFormatException e) {
                // Invalid agent ID format
                response.sendRedirect("listAgents?error=invalidAgentId");
            }
        } else {
            // If no agent ID provided, redirect to agents list
            response.sendRedirect("listAgents?action=selectForReview");
        }
    }
}
