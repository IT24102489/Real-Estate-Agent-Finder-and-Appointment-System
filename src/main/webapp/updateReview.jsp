<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.realestate.model.Review" %>

<!DOCTYPE html>
<html>
<head>
  <title>Update Review - Real Estate System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
  <nav class="navbar">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">Real Estate System</a>
      <ul class="navbar-nav">
        <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Agents</a></li>
        <li class="nav-item"><a href="#" class="nav-link">Properties</a></li>
        <li class="nav-item"><a href="listReviews" class="nav-link">Reviews</a></li>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <%
      Review review = (Review) request.getAttribute("review");
      if (review == null) {
        // Redirect to error page if no review found
        response.sendRedirect("error.jsp?message=Review not found");
        return;
      }
    %>
    
    <div class="card">
      <div class="card-header">
        <h2>Update Review for Agent #<%= review.getAgentId() %></h2>
      </div>
      <div class="card-body">
        <% if (request.getAttribute("errorMessage") != null) { %>
          <div class="alert" style="background-color: #f8d7da; color: #721c24; padding: 10px; margin-bottom: 20px; border-radius: 4px;">
            <%= request.getAttribute("errorMessage") %>
          </div>
        <% } %>

        <form action="updateReview" method="post">
          <input type="hidden" name="id" value="<%= review.getId() %>">
          <input type="hidden" name="agentId" value="<%= review.getAgentId() %>">
          
          <div class="form-group">
            <label class="form-label" for="reviewerName">Your Name:</label>
            <input type="text" class="form-control" id="reviewerName" name="reviewerName" value="<%= review.getReviewerName() %>" required>
          </div>
          
          <div class="form-group">
            <label class="form-label" for="reviewerEmail">Your Email:</label>
            <input type="email" class="form-control" id="reviewerEmail" name="reviewerEmail" value="<%= review.getReviewerEmail() %>" required>
          </div>
          
          <div class="form-group">
            <label class="form-label">Rating:</label>
            <div class="star-rating-input">
              <input type="radio" id="star5" name="rating" value="5" <%= review.getRating() == 5 ? "checked" : "" %> required>
              <label for="star5">★</label>
              <input type="radio" id="star4" name="rating" value="4" <%= review.getRating() == 4 ? "checked" : "" %>>
              <label for="star4">★</label>
              <input type="radio" id="star3" name="rating" value="3" <%= review.getRating() == 3 ? "checked" : "" %>>
              <label for="star3">★</label>
              <input type="radio" id="star2" name="rating" value="2" <%= review.getRating() == 2 ? "checked" : "" %>>
              <label for="star2">★</label>
              <input type="radio" id="star1" name="rating" value="1" <%= review.getRating() == 1 ? "checked" : "" %>>
              <label for="star1">★</label>
            </div>
          </div>
          
          <div class="form-group">
            <label class="form-label" for="reviewText">Review:</label>
            <textarea class="form-control" id="reviewText" name="reviewText" rows="5" required><%= review.getReviewText() %></textarea>
          </div>
          
          <div class="form-group text-right">
            <a href="listReviews?agentId=<%= review.getAgentId() %>" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary ml-2">Update Review</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  
  <script>
    // JavaScript to make star rating work with proper visual feedback
    document.addEventListener('DOMContentLoaded', function() {
      // Get all star rating labels
      const stars = document.querySelectorAll('.star-rating-input label');
      
      // Add click event listener to each star
      stars.forEach(function(star) {
        star.addEventListener('click', function() {
          // Get the associated radio button
          const radio = document.getElementById(this.getAttribute('for'));
          // Set it as checked
          radio.checked = true;
        });
      });
    });
  </script>
</body>
</html>
