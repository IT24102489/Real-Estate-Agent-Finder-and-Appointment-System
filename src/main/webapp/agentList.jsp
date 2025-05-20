<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.realestate.model.Agent" %>
<!DOCTYPE html>
<html>
<head>
  <title>Our Agents - Real Estate System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css">
  <style>
    .agent-card {
      border: 1px solid #e0e0e0;
      border-radius: 8px;
      margin-bottom: 20px;
      padding: 15px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.05);
      transition: transform 0.2s ease;
      background-color: #fff;
    }
    .agent-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    }
    .agent-top {
      display: flex;
      align-items: center;
      margin-bottom: 15px;
    }
    .agent-photo {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      margin-right: 15px;
      object-fit: cover;
      background-color: #f0f0f0;
    }
    .agent-info {
      flex: 1;
    }
    .agent-name {
      font-size: 1.25rem;
      font-weight: 600;
      margin: 0 0 5px 0;
    }
    .agent-expertise {
      color: #555;
      font-size: 0.9rem;
      margin: 0 0 5px 0;
    }
    .agent-contact {
      font-size: 0.9rem;
      margin-bottom: 10px;
    }
    .agent-rating {
      display: flex;
      align-items: center;
    }
    .star-rating {
      display: flex;
      margin-right: 10px;
    }
    .rating-value {
      font-weight: 600;
      color: #f39c12;
    }
    .agent-actions {
      margin-top: 15px;
      display: flex;
      justify-content: space-between;
    }
    .sort-options {
      margin-bottom: 20px;
      background-color: #f5f5f5;
      padding: 15px;
      border-radius: 5px;
    }
    .sort-btn {
      margin-right: 10px;
      padding: 5px 15px;
      border: 1px solid #ddd;
      border-radius: 20px;
      background-color: #fff;
      cursor: pointer;
      transition: all 0.2s ease;
    }
    .sort-btn:hover, .sort-btn.active {
      background-color: #007bff;
      color: white;
      border-color: #007bff;
    }
  </style>
</head>
<body>
  <nav class="navbar">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">Real Estate System</a>
      <ul class="navbar-nav">
        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="listAgents" class="nav-link active">Agents</a></li>
        <li class="nav-item"><a href="listReviews" class="nav-link">Reviews</a></li>
        <% if (session.getAttribute("user") != null) { %>
          <li class="nav-item dropdown">
            <a href="#" class="nav-link">Welcome, <%= ((com.realestate.model.User)session.getAttribute("user")).getName() %></a>
            <div class="dropdown-menu">
              <a href="auth?action=logout" class="dropdown-item">Logout</a>
            </div>
          </li>
        <% } else { %>
          <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <% } %>
      </ul>
    </div>
  </nav>

  <div class="container mt-4">
    <% if (Boolean.TRUE.equals(request.getAttribute("selectForReview"))) { %>
      <h1>Select an Agent to Review</h1>
      <p>Please select an agent from the list below to write your review.</p>
    <% } else { %>
      <h1>Our Real Estate Agents</h1>
      <p>Discover our team of professional real estate agents ready to help you.</p>
    <% } %>
    
    <div class="sort-options">
      <span>Sort by: </span>
      <a href="listAgents?sort=rating" class="sort-btn <%= "rating".equals(request.getAttribute("sort")) ? "active" : "" %>">Highest Rated</a>
      <a href="listAgents?sort=id" class="sort-btn <%= "id".equals(request.getAttribute("sort")) ? "active" : "" %>">Default</a>
    </div>
    
    <div class="row">
      <% 
      List<Agent> agents = (List<Agent>) request.getAttribute("agents");
      if (agents != null && !agents.isEmpty()) {
          for (Agent agent : agents) {
      %>
          <div class="col-md-6">
            <div class="agent-card">
              <div class="agent-top">
                <img src="images/<%= agent.getImagePath() %>" class="agent-photo" alt="<%= agent.getName() %>" onerror="this.src='images/default-agent.jpg'">
                <div class="agent-info">
                  <h3 class="agent-name"><%= agent.getName() %></h3>
                  <p class="agent-expertise"><%= agent.getExpertise() %></p>
                  <div class="agent-rating">
                    <div class="star-rating">
                      <% for (int i = 1; i <= 5; i++) { %>
                        <span class="<%= i <= agent.getRating() ? "star-active" : "star-inactive" %>"></span>
                      <% } %>
                    </div>
                    <span class="rating-value"><%= String.format("%.1f", agent.getRating()) %></span>
                  </div>
                </div>
              </div>
              <div class="agent-contact">
                <p><strong>Email:</strong> <%= agent.getEmail() %></p>
                <p><strong>Phone:</strong> <%= agent.getPhone() %></p>
              </div>
              <div class="agent-actions">
                <% if (Boolean.TRUE.equals(request.getAttribute("selectForReview"))) { %>
                  <a href="addReview?agentId=<%= agent.getId() %>" class="btn btn-primary btn-block">Select This Agent to Review</a>
                <% } else { %>
                  <a href="listReviews?agentId=<%= agent.getId() %>" class="btn btn-primary">View Reviews</a>
                  <% if (session.getAttribute("user") != null) { %>
                    <a href="addReview?agentId=<%= agent.getId() %>" class="btn btn-success">Write Review</a>
                  <% } else { %>
                    <a href="login.jsp?redirect=addReview?agentId=<%= agent.getId() %>" class="btn btn-success">Login to Review</a>
                  <% } %>
                <% } %>
              </div>
            </div>
          </div>
      <%
          }
      } else {
      %>
          <div class="alert alert-info">No agents found in the system.</div>
      <% } %>
    </div>
  </div>
</body>
</html>
