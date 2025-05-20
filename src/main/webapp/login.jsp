<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login - Real Estate System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css">
  <style>
    .login-container {
      max-width: 400px;
      margin: 40px auto;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      background-color: #fff;
    }
    .login-title {
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-label {
      display: block;
      margin-bottom: 5px;
      font-weight: 500;
    }
    .form-control {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
    }
    .btn-full {
      width: 100%;
    }
    .alert {
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 4px;
    }
    .alert-danger {
      background-color: #f8d7da;
      color: #721c24;
    }
    .alert-success {
      background-color: #d4edda;
      color: #155724;
    }
    .help-text {
      margin-top: 20px;
      text-align: center;
      font-size: 14px;
      color: #6c757d;
    }
  </style>
</head>
<body>
  <nav class="navbar">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">Real Estate System</a>
      <ul class="navbar-nav">
        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="listAgents" class="nav-link">Agents</a></li>
        <li class="nav-item"><a href="listReviews" class="nav-link">Reviews</a></li>
      </ul>
    </div>
  </nav>

  <div class="container">
    <div class="login-container">
      <h2 class="login-title">Login</h2>
      
      <%-- Display error message if any --%>
      <% 
      String error = request.getParameter("error");
      if (error != null) {
          String errorMessage = "";
          if (error.equals("empty_fields")) {
              errorMessage = "Please enter both username and password";
          } else if (error.equals("invalid_credentials")) {
              errorMessage = "Invalid username or password";
          } else if (error.equals("session_expired")) {
              errorMessage = "Your session has expired. Please login again";
          } else {
              errorMessage = "An error occurred during login";
          }
      %>
          <div class="alert alert-danger">
              <%= errorMessage %>
          </div>
      <% } %>
      
      <%-- Login form --%>
      <form action="auth" method="post">
        <input type="hidden" name="action" value="login">
        <input type="hidden" name="redirect" value="<%= request.getParameter("redirect") != null ? request.getParameter("redirect") : "" %>">
        
        <div class="form-group">
          <label for="username" class="form-label">Username</label>
          <input type="text" id="username" name="username" class="form-control" required>
        </div>
        
        <div class="form-group">
          <label for="password" class="form-label">Password</label>
          <input type="password" id="password" name="password" class="form-control" required>
        </div>
        
        <div class="form-group">
          <button type="submit" class="btn btn-primary btn-full">Login</button>
        </div>
      </form>
      
      <div class="help-text">
        <p>For testing, you can use the following accounts:</p>
        <p><strong>Admin:</strong> username=admin, password=admin123</p>
        <p><strong>Agent:</strong> username=johnsmith, password=agent123</p>
        <p><strong>Client:</strong> username=client1, password=client123</p>
      </div>
    </div>
  </div>
</body>
</html>
