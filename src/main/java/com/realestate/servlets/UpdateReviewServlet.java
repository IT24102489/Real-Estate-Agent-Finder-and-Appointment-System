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
 * Servlet for handling the updating of existing reviews
 */
// Servlet mapping defined in web.xml
public class UpdateReviewServlet extends HttpServlet {

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
            
            // Get review ID from request
            int reviewId = Integer.parseInt(request.getParameter("id"));
            
            // Create ReviewDAO and retrieve the review
            ReviewDAO dao = new ReviewDAO();
            Review review = dao.getReviewById(reviewId);
            
            if (review != null) {
                // Check if the user is authorized to edit this review
                boolean isAuthorized = false;
                
                // Admin can edit any review
                if ("admin".equals(currentUser.getRole())) {
                    isAuthorized = true;
                } 
                // Client can only edit their own reviews (match by email)
                else if ("client".equals(currentUser.getRole()) && 
                         currentUser.getEmail() != null && 
                         currentUser.getEmail().equals(review.getReviewerEmail())) {
                    isAuthorized = true;
                }
                // Agents cannot edit reviews
                else if ("agent".equals(currentUser.getRole())) {
                    isAuthorized = false;
                }
                
                if (isAuthorized) {
                    // Set review as request attribute
                    request.setAttribute("review", review);
                    // Forward to update review form
                    request.getRequestDispatcher("updateReview.jsp").forward(request, response);
                } else {
                    // User not authorized to edit this review
                    request.setAttribute("errorMessage", "You are not authorized to edit this review.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                // Review not found
                request.setAttribute("errorMessage", "Review with ID " + reviewId + " not found.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            // Handle invalid review ID
            request.setAttribute("errorMessage", "Invalid review ID format.");
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
        try {
            // Check if the user is authenticated
            User currentUser = (User) request.getSession().getAttribute("user");
            if (currentUser == null) {
                // User not logged in, redirect to login page
                response.sendRedirect("login.jsp?redirect=listReviews");
                return;
            }
            
            // Create ReviewDAO instance
            ReviewDAO dao = new ReviewDAO();
            
            // Get review ID and agent ID from request
            int reviewId = Integer.parseInt(request.getParameter("id"));
            int agentId = Integer.parseInt(request.getParameter("agentId"));
            
            // Retrieve the existing review
            Review review = dao.getReviewById(reviewId);
            
            if (review != null) {
                // Check if the user is authorized to update this review
                boolean isAuthorized = false;
                
                // Admin can update any review
                if ("admin".equals(currentUser.getRole())) {
                    isAuthorized = true;
                } 
                // Client can only update their own reviews (match by email)
                else if ("client".equals(currentUser.getRole()) && 
                         currentUser.getEmail() != null && 
                         currentUser.getEmail().equals(review.getReviewerEmail())) {
                    isAuthorized = true;
                }
                // Agents cannot update reviews
                else if ("agent".equals(currentUser.getRole())) {
                    isAuthorized = false;
                }
                
                if (isAuthorized) {
                    // Update review details from form
                    review.setReviewerName(request.getParameter("reviewerName"));
                    review.setReviewerEmail(request.getParameter("reviewerEmail"));
                    review.setReviewText(request.getParameter("reviewText"));
                    review.setRating(Integer.parseInt(request.getParameter("rating")));
                    
                    // Update the review
                    dao.updateReview(review);
                    
                    // Redirect back to the agent reviews page
                    response.sendRedirect("listReviews?agentId=" + agentId + "&reviewUpdated=true");
                } else {
                    // User not authorized to update this review
                    request.setAttribute("errorMessage", "You are not authorized to update this review.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                // Review not found
                request.setAttribute("errorMessage", "Review with ID " + reviewId + " not found.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            // Handle invalid number format
            request.setAttribute("errorMessage", "Invalid input: Please provide valid review ID, agent ID, and rating.");
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
