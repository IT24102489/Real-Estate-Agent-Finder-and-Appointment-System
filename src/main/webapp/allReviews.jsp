<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.realestate.model.Review" %>

<!DOCTYPE html>
<html>
<head>
  <title>All Reviews - Real Estate System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <nav class="navbar">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">Real Estate System</a>
      <ul class="navbar-nav">
        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="listAgents" class="nav-link">Agents</a></li>
        <li class="nav-item"><a href="listReviews" class="nav-link active">Reviews</a></li>
        <% if(session.getAttribute("user") != null) { %>
          <li class="nav-item"><a href="auth?action=logout" class="nav-link">Logout</a></li>
        <% } else { %>
          <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <% } %>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <%
      List<Review> reviews = (List<Review>) request.getAttribute("reviews");
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM d, yyyy h:mm a");
      
      String successMessage = null;
      if (request.getParameter("reviewDeleted") != null) {
        successMessage = "Review deleted successfully!";
      }
    %>
    
    <div class="card mb-4">
      <div class="card-header">
        <h2>All Reviews</h2>
      </div>
      <div class="card-body">
        <% if (successMessage != null) { %>
          <div class="alert" style="background-color: #d4edda; color: #155724; padding: 10px; margin-bottom: 20px; border-radius: 4px;">
            <%= successMessage %>
          </div>
        <% } %>
        
        <div class="text-right mb-4">
          <a href="index.jsp" class="btn btn-secondary">Back to Home</a>
        </div>
        
        <% if (reviews != null && !reviews.isEmpty()) { %>
          <h3>Recent Reviews</h3>
          
          <div class="row">
            <% for (Review review : reviews) { %>
              <div class="col" style="margin-bottom: 20px; width: 100%;">
                <div class="card">
                  <div class="card-body">
                    <div class="review-meta">
                      <div>
                        <div class="review-author">
                          <%= review.getReviewerName() %>
                        </div>
                        <div>for Agent #<%= review.getAgentId() %></div>
                      </div>
                      <div class="review-date">
                        <%= review.getDatePosted().format(formatter) %>
                      </div>
                    </div>
                    
                    <div class="star-rating">
                      <% for (int i = 1; i <= 5; i++) { %>
                        <% if (i <= review.getRating()) { %>
                          <span class="star-active"></span>
                        <% } else { %>
                          <span class="star-inactive"></span>
                        <% } %>
                      <% } %>
                    </div>
                    
                    <div class="review-content">
                      <%= review.getReviewText() %>
                    </div>
                    
                    <div class="review-actions">
                      <a href="listReviews?agentId=<%= review.getAgentId() %>" class="btn btn-primary">View Agent's Reviews</a>
                      
                      <% 
                      // Check if user is logged in and is either admin or the author of this review
                      com.realestate.model.User currentUser = (com.realestate.model.User)session.getAttribute("user");
                      boolean canEditReview = false;
                      
                      if (currentUser != null) {
                        // Admin can edit any review
                        if ("admin".equals(currentUser.getRole())) {
                          canEditReview = true;
                        } 
                        // Client can only edit their own reviews (match by email)
                        else if ("client".equals(currentUser.getRole()) && 
                                 currentUser.getEmail() != null && 
                                 currentUser.getEmail().equals(review.getReviewerEmail())) {
                          canEditReview = true;
                        }
                      }
                      
                      if (canEditReview) {
                      %>
                        <a href="updateReview?id=<%= review.getId() %>" class="btn btn-secondary">Edit</a>
                        <a href="deleteReview?id=<%= review.getId() %>&agentId=<%= review.getAgentId() %>" 
                           onclick="return confirm('Are you sure you want to delete this review?')" 
                           class="btn btn-danger">Delete</a>
                      <% } %>
                    </div>
                  </div>
                </div>
              </div>
            <% } %>
          </div>
        <% } else { %>
          <div class="text-center" style="padding: 30px 0;">
            <h3>No reviews found</h3>
            <p>There are currently no reviews in the system.</p>
          </div>
        <% } %>
      </div>
    </div>
  </div>
  <%@ include file="includes/footer.jsp" %>
