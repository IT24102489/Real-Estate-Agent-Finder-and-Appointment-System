<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="includes/header.jsp" %>
    <% if (session.getAttribute("user") != null) { %>
      <div class="user-welcome">
        Welcome, <%= ((com.realestate.model.User)session.getAttribute("user")).getName() %>
        <a href="auth?action=logout" class="logout-link">Logout</a>
      </div>
    <% } else { %>
      <div class="auth-links">
        <a href="login.jsp" class="btn btn-sm btn-outline-primary">Login</a>
      </div>
    <% } %>
    <% if (request.getParameter("loggedOut") != null) { %>
      <div class="alert alert-success">
        You have been successfully logged out.
      </div>
    <% } %>
    <h1>Real Estate Agent Reviews & Ratings System</h1>
    <p>Welcome to the Reviews & Ratings component of our Real Estate System. This feature allows clients to:</p>
    
    <div class="card mb-4">
      <div class="card-body">
        <h3>Features:</h3>
        <ul>
          <li>Read reviews from previous clients about real estate agents</li>
          <li>Post your own reviews and rate agents based on your experience</li>
          <li>Edit or update your reviews as needed</li>
          <li>Find the highest-rated agents in your area</li>
        </ul>
      </div>
    </div>

    <div class="card">
      <div class="card-header">
        <h2>Quick Actions</h2>
      </div>
      <div class="card-body">
        <div class="text-center mb-4">
          <a href="listReviews" class="btn btn-primary">View All Reviews</a>
          <a href="listAgents" class="btn btn-secondary ml-2">Browse Agents</a>
          <% if (session.getAttribute("user") != null) { %>
            <a href="listAgents?action=selectForReview" class="btn btn-success ml-2">Write a Review</a>
          <% } else { %>
            <a href="login.jsp?redirect=listAgents?action=selectForReview" class="btn btn-success ml-2">Login to Write a Review</a>
          <% } %>
        </div>
        
        <h3>How Our Rating System Works</h3>
        <p>Our 5-star rating system helps you quickly assess the quality of service provided by real estate agents:</p>
        
        <div class="star-rating">
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span style="margin-left: 10px;">Exceptional service</span>
        </div>
        
        <div class="star-rating">
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-inactive"></span>
          <span style="margin-left: 10px;">Great service</span>
        </div>
        
        <div class="star-rating">
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span style="margin-left: 10px;">Good service</span>
        </div>
        
        <div class="star-rating">
          <span class="star-active"></span>
          <span class="star-active"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span style="margin-left: 10px;">Fair service</span>
        </div>
        
        <div class="star-rating">
          <span class="star-active"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span class="star-inactive"></span>
          <span style="margin-left: 10px;">Poor service</span>
        </div>
      </div>
    </div>
<%@ include file="includes/footer.jsp" %>