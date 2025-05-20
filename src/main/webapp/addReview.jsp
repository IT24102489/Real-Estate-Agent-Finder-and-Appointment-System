<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add Review - Real Estate System</title>
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
        <li class="nav-item"><a href="listReviews" class="nav-link">Reviews</a></li>
        <% if(session.getAttribute("user") != null) { %>
          <li class="nav-item"><a href="auth?action=logout" class="nav-link">Logout</a></li>
        <% } else { %>
          <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <% } %>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <div class="card">
      <div class="card-header">
        <% 
        com.realestate.model.Agent agent = (com.realestate.model.Agent)request.getAttribute("agent");
        String agentName = (agent != null) ? agent.getName() : "Unknown";
        Integer agentId = (agent != null) ? agent.getId() : 
                        (request.getAttribute("agentId") != null ? (Integer)request.getAttribute("agentId") : 
                        (request.getParameter("agentId") != null ? Integer.parseInt(request.getParameter("agentId")) : null));
        %>
        <h2>Add Review for <%= agentName %></h2>
        <% if (agent != null) { %>
        <div class="agent-preview">
          <div class="agent-rating">
            <div class="star-rating">
              <% for (int i = 1; i <= 5; i++) { %>
                <span class="<%= i <= agent.getRating() ? "star-active" : "star-inactive" %>"></span>
              <% } %>
            </div>
            <span class="rating-value"><%= String.format("%.1f", agent.getRating()) %></span>
          </div>
          <p><strong>Expertise:</strong> <%= agent.getExpertise() %></p>
        </div>
        <% } %>
      </div>
      <div class="card-body">
        <% if (request.getAttribute("errorMessage") != null) { %>
          <div class="alert" style="background-color: #f8d7da; color: #721c24; padding: 10px; margin-bottom: 20px; border-radius: 4px;">
            <%= request.getAttribute("errorMessage") %>
          </div>
        <% } %>

        <form action="addReview" method="post">
          <input type="hidden" name="agentId" value="<%= agentId %>">
          
          <% 
          // Get current logged in user
          com.realestate.model.User currentUser = (com.realestate.model.User)session.getAttribute("user");
          String userName = (currentUser != null) ? currentUser.getName() : "";
          String userEmail = (currentUser != null) ? currentUser.getEmail() : "";
          %>
          
          <div class="form-group">
            <label class="form-label" for="reviewerName">Your Name:</label>
            <input type="text" class="form-control" id="reviewerName" name="reviewerName" value="<%= userName %>" required>
          </div>
          
          <div class="form-group">
            <label class="form-label" for="reviewerEmail">Your Email:</label>
            <input type="email" class="form-control" id="reviewerEmail" name="reviewerEmail" value="<%= userEmail %>" required>
          </div>
          
          <div class="form-group">
            <label class="form-label">Rating:</label>
            <div class="star-rating-input">
              <input type="radio" id="star5" name="rating" value="5" required>
              <label for="star5">★</label>
              <input type="radio" id="star4" name="rating" value="4">
              <label for="star4">★</label>
              <input type="radio" id="star3" name="rating" value="3">
              <label for="star3">★</label>
              <input type="radio" id="star2" name="rating" value="2">
              <label for="star2">★</label>
              <input type="radio" id="star1" name="rating" value="1">
              <label for="star1">★</label>
            </div>
          </div>
          
          <div class="form-group">
            <label class="form-label" for="reviewText">Review:</label>
            <textarea class="form-control" id="reviewText" name="reviewText" rows="5" required></textarea>
          </div>
          
          <div class="form-group text-right">
            <a href="listReviews?agentId=${param.agentId != null ? param.agentId : requestScope.agentId}" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary ml-2">Submit Review</button>
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
  <%@ include file="includes/footer.jsp" %>
