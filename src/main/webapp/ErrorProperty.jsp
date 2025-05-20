<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/globalProperty.css" rel="stylesheet">
    <style>
        .error-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .error-message {
            color: #dc3545;
            margin-bottom: 20px;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .back-link:hover {
            background-color: #0056b3;
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h2>Error</h2>
        <div class="error-message">
            <%= request.getAttribute("errorMessage") %>
        </div>
        <a href="ViewProperty.jsp" class="back-link">Back to Properties List</a>
    </div>
</body>
</html> 