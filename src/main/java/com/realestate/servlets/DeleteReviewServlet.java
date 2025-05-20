package com.realestate.servlets;

import com.realestate.dao.ReviewDAO;
import com.realestate.model.Review;
import com.realestate.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * Servlet for handling the deletion of reviews
 */
// Servlet mapping defined in web.xml
public class DeleteReviewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Check if the user is authenticated
            User currentUser = (User) request.getSession().getAttribute("user");
            if (currentUser == null) {
                // User not logged in, redirect to login page
                response.sendRedirect("login.jsp?redirect=listReviews");
                return;
            }
            
            // Get review ID and agent ID from request
            int reviewId = Integer.parseInt(request.getParameter("id"));
            int agentId = Integer.parseInt(request.getParameter("agentId"));
            
            // Create ReviewDAO instance
            ReviewDAO dao = new ReviewDAO();
            
            // Verify the review exists before deletion
            Review review = dao.getReviewById(reviewId);
            if (review != null) {
                // Check if the user is authorized to delete this review
                boolean isAuthorized = false;
                
                // Admin can delete any review
                if ("admin".equals(currentUser.getRole())) {
                    isAuthorized = true;
                } 
                // Client can only delete their own reviews (match by email)
                else if ("client".equals(currentUser.getRole()) && 
                         currentUser.getEmail() != null && 
                         currentUser.getEmail().equals(review.getReviewerEmail())) {
                    isAuthorized = true;
                }
                // Agents can delete reviews only if specifically allowed (we're not allowing it currently)
                else if ("agent".equals(currentUser.getRole())) {
                    isAuthorized = false; // Agents cannot delete reviews
                }
                
                if (isAuthorized) {
                    // Delete the review
                    boolean deleted = dao.deleteReview(reviewId);
                    
                    if (deleted) {
                        // Redirect back to agent reviews page with success message
                        response.sendRedirect("listReviews?agentId=" + agentId + "&reviewDeleted=true");
                    } else {
                        // Delete failed for some reason
                        request.setAttribute("errorMessage", "Failed to delete review with ID " + reviewId);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                    }
                } else {
                    // User not authorized to delete this review
                    request.setAttribute("errorMessage", "You are not authorized to delete this review.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                // Review not found
                request.setAttribute("errorMessage", "Review with ID " + reviewId + " not found.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            // Handle invalid ID format
            request.setAttribute("errorMessage", "Invalid review or agent ID format.");
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Delegate to doGet since both should handle deletion the same way
        doGet(request, response);
    }
}
