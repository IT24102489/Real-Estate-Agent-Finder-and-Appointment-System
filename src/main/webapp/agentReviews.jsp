<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.realestate.model.Review" %>
<%
  // Get review data from request attributes at the beginning of the page
  List<Review> reviews = (List<Review>) request.getAttribute("reviews");
  Integer agentId = (Integer) request.getAttribute("agentId");
  Double averageRating = (Double) request.getAttribute("averageRating");
  Integer reviewCount = (Integer) request.getAttribute("reviewCount");
  String sortBy = (String) request.getAttribute("sortBy");
  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM d, yyyy h:mm a");
  
  String successMessage = null;
  if (request.getParameter("reviewAdded") != null) {
    successMessage = "Review added successfully!";
  } else if (request.getParameter("reviewUpdated") != null) {
    successMessage = "Review updated successfully!";
  } else if (request.getParameter("reviewDeleted") != null) {
    successMessage = "Review deleted successfully!";
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Agent Reviews - Real Estate System</title>
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
        <% 
        // Get current user and determine role
        com.realestate.model.User navUser = (com.realestate.model.User)session.getAttribute("user");
        String userRole = (navUser != null) ? navUser.getRole() : "";
        
        if(navUser != null) { 
        %>
          <li class="nav-item"><span class="nav-text">Welcome, <%= navUser.getName() %> (<%= userRole %>)</span></li>
          <li class="nav-item"><a href="auth?action=logout" class="nav-link">Logout</a></li>
        <% } else { %>
          <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <% } %>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    
    <div class="card mb-4">
      <div class="card-header">
        <h2>Reviews for Agent #<%= agentId %></h2>
      </div>
      <div class="card-body">
        <% if (successMessage != null) { %>
          <div class="alert" style="background-color: #d4edda; color: #155724; padding: 10px; margin-bottom: 20px; border-radius: 4px;">
            <%= successMessage %>
          </div>
        <% } %>
        
        <div class="rating-summary">
          <div class="rating-average">
            <%= String.format("%.1f", averageRating) %>
          </div>
          <div class="rating-information">
            <div class="star-rating">
              <% for (int i = 1; i <= 5; i++) { %>
                <% if (i <= Math.round(averageRating)) { %>
                  <span class="star-active"></span>
                <% } else { %>
                  <span class="star-inactive"></span>
                <% } %>
              <% } %>
            </div>
            <p><%= reviewCount %> review<%= reviewCount != 1 ? "s" : "" %></p>
          </div>
        </div>
        
        <div class="text-right mb-4">
          <% if(session.getAttribute("user") != null && agentId != null) { %>
            <a href="addReview?agentId=<%= agentId %>" class="btn btn-primary">Write a Review</a>
          <% } else { %>
            <a href="login.jsp" class="btn btn-primary">Login to Write a Review</a>
          <% } %>
          
          <% if ("date".equals(sortBy)) { %>
            <a href="listReviews?agentId=<%= agentId %>&sort=rating" class="btn btn-secondary ml-2">Sort by Rating</a>
          <% } else { %>
            <a href="listReviews?agentId=<%= agentId %>&sort=date" class="btn btn-secondary ml-2">Sort by Date</a>
          <% } %>
        </div>
        
        <% if (reviews != null && !reviews.isEmpty()) { %>
          <% for (Review review : reviews) { %>
            <div class="card mb-4">
              <div class="card-body">
                <div class="review-meta">
                  <div class="review-author">
                    <%= review.getReviewerName() %>
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
                    <a href="deleteReview?id=<%= review.getId() %>&agentId=<%= agentId %>" 
                       onclick="return confirm('Are you sure you want to delete this review?')" 
                       class="btn btn-danger">Delete</a>
                  <% } %>
                </div>
              </div>
            </div>
          <% } %>
        <% } else { %>
          <div class="text-center" style="padding: 30px 0;">
            <h3>No reviews yet!</h3>
            <p>Be the first to review this agent.</p>
          </div>
        <% } %>
      </div>
    </div>
  </div>
  <%@ include file="includes/footer.jsp" %>
