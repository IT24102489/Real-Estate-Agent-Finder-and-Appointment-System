<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
  <title>Error - Real Estate System</title>
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
    <div class="card">
      <div class="card-header" style="background-color: #f8d7da; color: #721c24;">
        <h2>Error</h2>
      </div>
      <div class="card-body">
        <div style="text-align: center; padding: 30px 0;">
          <h3>
            <% if(request.getAttribute("errorMessage") != null) { %>
              <%= request.getAttribute("errorMessage") %>
            <% } else if(request.getParameter("message") != null) { %>
              <%= request.getParameter("message") %>
            <% } else { %>
              An unexpected error occurred
            <% } %>
          </h3>
          
          <p>We apologize for the inconvenience. Please try again later or contact support if the problem persists.</p>
          
          <div style="margin-top: 20px;">
            <a href="index.jsp" class="btn btn-primary">Return to Home</a>
            <a href="javascript:history.back()" class="btn btn-secondary ml-2">Go Back</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
